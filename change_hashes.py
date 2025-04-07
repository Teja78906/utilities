import os
import re
import bech32

def convert_hash(input_hash, cache):
    if input_hash in cache:
        return cache[input_hash]
    try:
        hrp, data = bech32.bech32_decode(input_hash)
        if hrp is None or data is None:
            return input_hash  # Return original if decoding fails

        bytes_list = bech32.convertbits(data, 5, 8, False)
        if bytes_list is None:
            return input_hash

        data = bech32.convertbits(bytes_list, 8, 5, True)
        if data is None:
            return input_hash

        converted = bech32.bech32_encode("drt", data)
        cache[input_hash] = converted
        return converted
    except Exception:
        return input_hash

def is_valid_file(file_path):
    return os.path.isfile(file_path) and file_path.endswith((".json", ".yml", ".pem", ".sh", ".gitignore"))

def process_files(directory, output_file):
    hash_cache = {}
    matched_hashes = set()
    
    for root, _, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            if not is_valid_file(file_path):
                print(f"Skipped: {file_path} (unsupported file type)")
                continue

            with open(file_path, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()

            matches = set(re.findall(r'erd1[a-zA-Z0-9]*', content))
            matched_hashes.update(matches)
            
            if matches:
                replacements = {hash_val: convert_hash(hash_val, hash_cache) for hash_val in matches}
                content = re.sub(r'erd1[a-zA-Z0-9]*', lambda m: replacements.get(m.group(0), m.group(0)), content)

                with open(file_path, "w", encoding="utf-8") as f:
                    f.write(content)
                print(f"Processed: {file_path} with {len(matches)} changes")
    
    with open(output_file, "w") as output:
        output.write("\n".join(matched_hashes))

if __name__ == "__main__":
    output_file = "../matched_hashes.txt"
    process_files(".", output_file)
    print("Hash replacement completed successfully!")
    print(f"All matched hashes have been saved to {output_file}.")