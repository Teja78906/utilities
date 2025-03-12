import os
import re
import mimetypes
from pathlib import Path

# Define valid file extensions
VALID_EXTENSIONS = {".json", ".yml", ".sh", ".gitignore", ".toml"}

# Define substitutions
SUBSTITUTIONS = [
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
    (r"multiversx_chain_vm_executor", r"dharitri_vm_executor"),
    (r"multiversx-chain-vm-executor", r"dharitri-vm-executor"),
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

def is_valid_file(file_path: Path) -> bool:
    """Check if a file is valid for processing."""
    if not file_path.is_file():
        return False
    mime_type, _ = mimetypes.guess_type(file_path)
    return mime_type and mime_type.startswith("text") or file_path.suffix in VALID_EXTENSIONS

def process_file(file_path: Path):
    try:
        with file_path.open("r", encoding="utf-8") as f:
            content = f.read()
        for pattern, replacement in SUBSTITUTIONS:
            content = re.sub(pattern, replacement, content)
        with file_path.open("w", encoding="utf-8") as f:
            f.write(content)
    except UnicodeDecodeError:
        print(f"Skipped (binary file): {file_path}")

def main():
    for file in Path(".").rglob("*"):
        if is_valid_file(file):
            print(f"processing file: {file}")
            process_file(file)

if __name__ == "__main__":
    main()
