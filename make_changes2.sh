#!/bin/bash

# Ensure the script stops on errors
set -e

# Array of substitutions: "search_pattern replacement"
substitutions=(
  "github.com\/multiversx github.com\/TerraDharitri"
  "multiversx.com dharitri.org"
  "esdt dcdt"
  "Esdt Dcdt"
  "ESDT DCDT"
  "egld rewa"
  "Egld Rewa"
  "EGLD REWA"
  "eGLD rEWA"
  "cgld cmoa"
  "Cgld Cmoa"
  "CGLD CMOA"
  "cGLD cMOA"
  "erdrs drtrs"
  "Erdrs Drtrs"
  "ERDRS DRTRS"
  "erdpy drtpy"
  "Erdpy Drtpy"
  "ERDPY DRTPY"
  "erdjs drtjs"
  "Erdjs Drtjs"
  "ERDJS DRTJS"
  "erdSys drtSys"
  "elrond numbat"
  "Elrond Numbat"
  "ELROND NUMBAT"
  "mandos denali"
  "Mandos Denali"
  "MANDOS DENALI"
  "arwen andes"
  "Arwen Andes"
  "ARWEN ANDES"
  "multiversx dharitri"
  "Multiversx Dharitri"
  "MULTIVERSX DHARITRI"
  "MultiversX Dharitri"
  "ESDigitalToken DCDigitalToken"
  "EsdTokenPayment DcdTokenPayment"
  "mxvm drtvm"
  "Mxvm Drtvm"
  "MXVM DRTVM"
  "mxpy drtpy"
  "Mxpy Drtpy"
  "MXPY DRTPY"
  "mxsc drtsc"
  "Mxsc Drtsc"
  "MXSC DRTSC"
  "multiversx_chain_vm_executor dharitri_vm_executor"
  "multiversx-chain-vm-executor dharitri-vm-executor"
  "LKMEX LKMOA"
  "lkmex lkmoa"
  "LKmex LKmoa"
  "65736474 64636474"
  "45736474 44636474"
  "45534454 44434454"
  "65676c64 72657761"
  "45676c64 52657761"
  "45474c44 52455741"
  "656c726f6e64 6e756d626174"
  "456c726f6e64 4e756d626174"
  "454c524f4e44 4e554d424154"
  "6d616e646f73 64656e616c69"
  "4d616e646f73 44656e616c69"
  "4d414e444f53 44454e414c49"
  "617277656e 616e646573"
  "417277656e 416e646573"
  "415257454e 414e444553"
  "6d756c74697665727378 6468617269747269"
  "4d756c74697665727378 4468617269747269"
  "4d554c54495645525358 4448415249545249"
  "4d756c74697665727358 4468617269747269"
  "6572647273 6472747273"
  "4572647273 4472747273"
  "4552445253 4452545253"
  "6572647079 6472747079"
  "4572647079 4472747079"
  "4552445059 4452545059"
  "6572646a73 6472746a73"
  "4572646a73 4472746a73"
  "4552444a53 4452544a53"
  "657264537973 647274537973"
)

# Function to determine if a file is readable and has the correct extension
is_valid_file() {
  local file="$1"
  [[ -f "$file" ]] && (file "$file" | grep -q "text" || [[ "$file" == *.json || "$file" == *.yml || "$file" == *.pem || "$file" == *.sh || "$file" == ".gitignore" || "$file" == ".toml" ]])
}

# Function to process files recursively, including hidden files and directories
process_files() {
  local path="$1"
  shopt -s dotglob  # Include hidden files and directories
  for file in "$path"/*; do
    if [ -d "$file" ]; then
      # If the file is a directory, recursively call this function
      process_files "$file"
    elif is_valid_file "$file"; then
      # If the file is valid, apply substitutions
      for sub in "${substitutions[@]}"; do
        search=$(echo "$sub" | awk '{print $1}')
        replace=$(echo "$sub" | awk '{print $2}')
        sed -i "s/$search/$replace/g" "$file"
      done
      echo "Processed: $file"
    else
      echo "Skipped: $file (not a valid file for processing)"
    fi
  done
  shopt -u dotglob  # Disable inclusion of hidden files
}

# Start processing from the current directory
process_files "."

echo "Naming changes completed successfully!"

