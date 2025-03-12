#!/usr/bin/env python3
import os
import subprocess
from pathlib import Path

def find_wasm_files():
    """Find all .wasm files in the current directory and subdirectories."""
    return list(Path('.').rglob('*.wasm'))

def convert_to_wat(wasm_path):
    """Convert a WASM file to WAT format."""
    wat_path = wasm_path.with_suffix('.wat')
    try:
        result = subprocess.run(
            ['wasm2wat', str(wasm_path), '-o', str(wat_path)],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            print(f"✅ Converted: {wasm_path}")
        else:
            print(f"❌ Failed to convert {wasm_path}")
            print(f"Error: {result.stderr}")
    except FileNotFoundError:
        print("❌ Error: wasm2wat not found. Please install wabt:")
        print("- Ubuntu/Debian: sudo apt install wabt")
        print("- macOS: brew install wabt")
        print("- Windows: Download from https://github.com/WebAssembly/wabt/releases")
        exit(1)

def main():
    print("🔍 Searching for WASM files...")
    wasm_files = find_wasm_files()
    
    if not wasm_files:
        print("No WASM files found in the current directory or subdirectories.")
        return
    
    print(f"Found {len(wasm_files)} WASM files")
    
    for wasm_file in wasm_files:
        convert_to_wat(wasm_file)
    
    print("\n✨ Conversion complete!")

if __name__ == "__main__":
    main()
