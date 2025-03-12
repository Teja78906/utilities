#!/usr/bin/env python3
import os
import re
import mimetypes
import magic
from pathlib import Path
from bech32 import bech32_encode, bech32_decode, convertbits

class HashConverter:
    def __init__(self, output_file="../matched_hashes.txt"):
        self.output_file = output_file
        # Clear the output file at initialization
        with open(self.output_file, 'w') as f:
            pass

    def modify_hex_address(self, hex_address):
        """Replace first 4 bits and 32-35 bits of the hex address."""
        modified_hex = f"233300000000000000000000000000000002333{hex_address[39:]}"
        return modified_hex

    def hex_to_bech32(self, hrp, hex_address):
        """Convert a hexadecimal address to bech32 format."""
        try:
            # Convert Hex to byte array
            data_bytes = bytes.fromhex(hex_address)
            # Convert bytes to 5-bit data for Bech32 encoding
            data_5bit = convertbits(data_bytes, 8, 5)
            if data_5bit is None:
                raise ValueError("Error converting Hex to Bech32 data")
            # Encode to Bech32
            return bech32_encode(hrp, data_5bit)
        except Exception as e:
            raise ValueError(f"Error in hex_to_bech32: {str(e)}")

    def generate_modified_addresses(self, bech32_address):
        """Generate modified addresses from input bech32 address."""
        try:
            # Decode the input Bech32 address to get the Hex data
            hrp, data = bech32_decode(bech32_address)
            if hrp is None or data is None:
                raise ValueError("Invalid Bech32 address")
            
            # Convert Bech32 data to Hex
            hex_data = ''.join(f"{byte:02x}" for byte in convertbits(data, 5, 8, False))
            
            # Modify the Hex address
            modified_hex = self.modify_hex_address(hex_data)
            
            # Convert the modified Hex back to Bech32 with new HRP
            return self.hex_to_bech32("drt", modified_hex)
        except Exception as e:
            raise ValueError(f"Error in generate_modified_addresses: {str(e)}")

    def is_valid_file(self, file_path):
        """Determine if a file is valid for processing."""
        try:
            # Get file mime type using python-magic
            mime = magic.from_file(str(file_path), mime=True)
            valid_extensions = {'.json', '.yml', '.pem', '.sh', '.gitignore'}
            
            # Check if it's a text file or has a valid extension
            return mime.startswith('text/') or Path(file_path).suffix in valid_extensions
        except Exception:
            return False

    def process_file(self, file_path):
        """Process a single file for hash replacement."""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()

            # Pattern to match the exact string sequence
            base_pattern = 'erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqq'
            if base_pattern in content:
                # Pattern to match hash ending with a non-alphanumeric character (excluding the character itself)
                full_pattern = rf'({base_pattern}[a-zA-Z0-9]+)(?=[^a-zA-Z0-9])'  # Adjusted regex
                matches = re.finditer(full_pattern, content)

                for match in matches:
                    hash_value = match.group(1)  # Extract the hash without the trailing non-alphanumeric character
                    print(f"Matched hash: {hash_value}")  # Debugging line
                    # Write the matched hash to output file
                    with open(self.output_file, 'a') as f:
                        f.write(f"{hash_value}\n")

                    # Convert the hash
                    try:
                        converted_hash = self.generate_modified_addresses(hash_value)
                        # Replace the hash in the content
                        content = content.replace(hash_value, converted_hash)
                    except ValueError as e:
                        print(f"Error converting hash {hash_value}: {str(e)}")
                        continue

                # Write modified content back to file
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)

            print(f"Processed: {file_path}")
        except Exception as e:
            print(f"Error processing {file_path}: {str(e)}")

    def process_files(self, path):
        """Process files recursively starting from the given path."""
        try:
            path = Path(path)
            for item in path.rglob('*'):
                if item.is_file() and self.is_valid_file(item):
                    self.process_file(item)
                elif item.is_file():
                    print(f"Skipped: {item} (not a valid text, JSON, YAML, or PEM file)")
        except Exception as e:
            print(f"Error processing directory {path}: {str(e)}")

def main():
    try:
        converter = HashConverter()
        converter.process_files(".")
        print("Hash replacement completed successfully!")
        print(f"All matched hashes have been saved to {converter.output_file}")
    except Exception as e:
        print(f"Error in main execution: {str(e)}")
        exit(1)

if __name__ == "__main__":
    main()
