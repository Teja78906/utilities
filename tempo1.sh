#!/bin/bash

# Create the destination folder "outputs" if it doesn't exist
mkdir -p outputs

# Find all directories named "output" and copy any .wasm files to "outputs"
find . -type d -name "output" | while read -r dir; do
    # Copy all .wasm files from found "output" directories to "outputs"
    find "$dir" -maxdepth 1 -type f -name "*.wasm" -exec cp {} outputs/ \;
done

echo "All .wasm files have been copied to the 'outputs' folder."



# #!/bin/bash

# # List of contract paths
# contracts=(
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/answer"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/async-call-builtin"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/async-call-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/async-call-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/breakpoint"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/big-floats"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/counter"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/deployer"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/deployer-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/deployer-fromanother-contract"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/deployer-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/vmhooks"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/erc20"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exchange"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-builtin"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-by-caller/child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-by-caller/parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-dcdt/basic"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-recursive"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-recursive-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-dest-ctx-recursive-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-recursive"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-recursive-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-recursive-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-simple-child"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-same-ctx-simple-parent"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-sync-ctx-multiple/alpha"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-sync-ctx-multiple/beta"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-sync-ctx-multiple/delta"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/exec-sync-ctx-multiple/gamma"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/init-correct"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/init-simple"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/init-wrong"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/managed-buffers"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/misc"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/num-with-fp"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/promises"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/promises-train"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/promises-tracking"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/signatures"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/timelocks"
# "/home/dugong/Desktop/teja-work/temp/drt-go-chain-vm/test/contracts/upgrader-fromanother-contract"
# )
# working=$(pwd)
# # Loop through each contract path
# for contract in "${contracts[@]}"; do
#     # Extract folder name from path
#     folder_name=$(basename "$contract")

#     # Make sure the path is absolute
#     if [[ "$contract" != /* ]]; then
#         contract="$working/$contract"
#     fi

#     # Check if directory exists
#     if [ ! -d "$contract" ]; then
#         echo "Directory does not exist: $contract"
#         continue
#     fi

#     # Change to the contract directory
#     cd "$contract" 
#     echo "currently in $(pwd)"
    
#     # Check if the source file exists
#     if [ ! -f "$folder_name.c" ]; then
#         echo "Source file not found: $folder_name.c"
#         cd "$working"
#         continue
#     fi
    
#     # Make sure output directory exists
#     mkdir -p output
    
#     # Compile the contract using clang
#     clang --target=wasm32 -nostdlib -I../drtvm -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -o output/"$folder_name".wasm "$folder_name".c
    
#     # Check compilation result
#     if [ $? -eq 0 ]; then
#         echo "Successfully compiled $folder_name"
#     else
#         echo "Failed to compile $folder_name"
#     fi

#     # Return to the original directory
#     cd "$working"
# done