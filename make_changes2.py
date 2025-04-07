#!/usr/bin/env python3
import os
import re
import subprocess
import sys

# Ensure the script stops on errors (Python's equivalent of set -e)
def check_error(exit_code, message):
    if exit_code != 0:
        print(f"Error: {message}")
        sys.exit(exit_code)

# Define substitutions
substitutions = [
    (r"github.com/multiversx", r"github.com/TerraDharitri"),
    (r"github.com/ElrondNetwork", r"github.com/TerraDharitri"),
    (r"multiversx.com", r"dharitri.org"),
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
    (r"erdrs", r"drtrs"),
    (r"Erdrs", r"Drtrs"),
    (r"ERDRS", r"DRTRS"),
    (r"erdpy", r"drtpy"),
    (r"Erdpy", r"Drtpy"),
    (r"ERDPY", r"DRTPY"),
    (r"erdjs", r"drtjs"),
    (r"Erdjs", r"Drtjs"),
    (r"ERDJS", r"DRTJS"),
    (r"erdSys", r"drtSys"),
    (r"elrond", r"numbat"),
    (r"Elrond", r"Numbat"),
    (r"ELROND", r"NUMBAT"),
    (r"mandos", r"denali"),
    (r"Mandos", r"Denali"),
    (r"MANDOS", r"DENALI"),
    (r"arwen", r"andes"),
    (r"Arwen", r"Andes"),
    (r"ARWEN", r"ANDES"),
    (r"multiversx", r"dharitri"),
    (r"Multiversx", r"Dharitri"),
    (r"MULTIVERSX", r"DHARITRI"),
    (r"MultiversX", r"Dharitri"),
    (r"ESDigitalToken", r"DCDigitalToken"),
    (r"EsdTokenPayment", r"DcdTokenPayment"),
    (r"mxvm", r"drtvm"),
    (r"Mxvm", r"Drtvm"),
    (r"MXVM", r"DRTVM"),
    (r"mxpy", r"drtpy"),
    (r"Mxpy", r"Drtpy"),
    (r"MXPY", r"DRTPY"),
    (r"mxsc", r"drtsc"),
    (r"Mxsc", r"Drtsc"),
    (r"MXSC", r"DRTSC"),
    (r"LKMEX", r"LKMOA"),
    (r"lkmex", r"lkmoa"),
    (r"LKmex", r"LKmoa"),
    (r"65736474", r"64636474"),
    (r"45736474", r"44636474"),
    (r"45534454", r"44434454"),
    (r"65676c64", r"72657761"),
    (r"45676c64", r"52657761"),
    (r"45474c44", r"52455741"),
    (r"656c726f6e64", r"6e756d626174"),
    (r"456c726f6e64", r"4e756d626174"),
    (r"454c524f4e44", r"4e554d424154"),
    (r"6d616e646f73", r"64656e616c69"),
    (r"4d616e646f73", r"44656e616c69"),
    (r"4d414e444f53", r"44454e414c49"),
    (r"617277656e", r"616e646573"),
    (r"417277656e", r"416e646573"),
    (r"415257454e", r"414e444553"),
    (r"6d756c74697665727378", r"6468617269747269"),
    (r"4d756c74697665727378", r"4468617269747269"),
    (r"4d554c54495645525358", r"4448415249545249"),
    (r"4d756c74697665727358", r"4468617269747269"),
    (r"6572647273", r"6472747273"),
    (r"4572647273", r"4472747273"),
    (r"4552445253", r"4452545253"),
    (r"6572647079", r"6472747079"),
    (r"4572647079", r"4472747079"),
    (r"4552445059", r"4452545059"),
    (r"6572646a73", r"6472746a73"),
    (r"4572646a73", r"4472746a73"),
    (r"4552444a53", r"4452544a53"),
    (r"657264537973", r"647274537973"),
]

# Function to determine if a file is readable and has the correct extension
def is_valid_file(file_path):
    if not os.path.isfile(file_path):
        return False
    
    # Check if file has text content using 'file' command
    try:
        result = subprocess.run(['file', file_path], capture_output=True, text=True)
        if 'text' in result.stdout.lower():
            return True
    except (subprocess.SubprocessError, FileNotFoundError):
        # If 'file' command fails, check by extension
        pass
    
    # Check extensions
    valid_extensions = ['.json', '.yml', '.pem', '.sh', '.gitignore', '.toml']
    for ext in valid_extensions:
        if file_path.endswith(ext):
            return True
    
    return False

# Function to apply substitutions to a file
def apply_substitutions(file_path):
    try:
        # Read the file content
        with open(file_path, 'r', errors='ignore') as file:
            content = file.read()
        
        # Apply all substitutions
        modified_content = content
        for search, replace in substitutions:
            modified_content = modified_content.replace(search, replace)
        
        # Write back only if changes were made
        if modified_content != content:
            with open(file_path, 'w') as file:
                file.write(modified_content)
        
        print(f"Processed: {file_path}")
        return True
    except Exception as e:
        print(f"Failed to process {file_path}: {e}")
        return False

# Function to process files recursively, including hidden files and directories
def process_files(path):
    try:
        for root, dirs, files in os.walk(path):
            for file in files:
                file_path = os.path.join(root, file)
                if is_valid_file(file_path):
                    apply_substitutions(file_path)
                else:
                    print(f"Skipped: {file_path} (not a valid file for processing)")
    except Exception as e:
        print(f"Error processing directory {path}: {e}")
        sys.exit(1)

if __name__ == "__main__":
    # Start processing from the current directory
    current_dir = os.getcwd()
    process_files(current_dir)
    print("Naming changes completed successfully!")