import os
import re

# List of substitutions: (search_pattern, replacement)
substitutions = [
    (r"esdt", r"dcdt"),
    (r"Esdt", r"Dcdt"),
    (r"ESDT", r"DCDT"),
    (r"egld", r"rewa"), 
    (r"Egld", r"Rewa"),
    (r"EGLD", r"REWA"),
    (r"eGLD", r"rEWA"),
    (r"cgld", r"cmoa"),
    (r"Cgld", r"Cmoa"),
    (r"CGLD", r"CMOA"),
    (r"cGLD", r"cMOA"),
    (r"elrond", r"numbat"),
    (r"Elrond", r"Numbat"),
    (r"ELROND", r"NUMBAT"),
    (r"mandos", r"denali"),
    (r"Mandos", r"Denali"),
    (r"MANDOS", r"DENALI"),
    (r"arwen", r"andes"),
    (r"Arwen", r"Andes"),
    (r"ARWEN", r"ANDES"),
    (r"ESDigitalToken", r"DCDigitalToken"),
    (r"EsdTokenPayment", r"DcdTokenPayment"),
]

def is_valid_file(file_path):
    """Check if the file is valid for processing."""
    valid_extensions = {".json", ".yml", ".pem", ".sh", ".gitignore"}
    if os.path.isfile(file_path):
        if file_path.endswith(tuple(valid_extensions)):
            return True
        try:
            with open(file_path, 'rb') as f:
                if b'text' in f.read(512):  # Basic check for text files
                    return True
        except Exception as e:
            pass
    return False

def process_files(path):
    """Recursively process files in the directory."""
    for root, _, files in os.walk(path):
        for file in files:
            file_path = os.path.join(root, file)
            if is_valid_file(file_path):
                try:
                    with open(file_path, 'r+', encoding='utf-8') as f:
                        content = f.read()
                        for search, replace in substitutions:
                            content = re.sub(search, replace, content)
                        f.seek(0)
                        f.write(content)
                        f.truncate()
                    print(f"Processed: {file_path}")
                except Exception as e:
                    print(f"Error processing {file_path}: {e}")
            else:
                print(f"Skipped: {file_path} (not a valid file)")

if __name__ == "__main__":
    process_files(".")
    print("Naming changes completed successfully!")
