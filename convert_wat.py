#!/usr/bin/env python3
import os
import subprocess
from pathlib import Path

def find_wat_files():
    """Find all .wat files in the current directory and subdirectories."""
    return list(Path('.').rglob('*.wat'))

def convert_to_wasm(wat_path):
    """Convert a WAT file to WASM format."""
    wasm_path = wat_path.with_suffix('.wasm')
    try:
        result = subprocess.run(
            ['wat2wasm', str(wat_path), '-o', str(wasm_path)],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            print(f"✅ Converted: {wat_path}")
        else:
            print(f"❌ Failed to convert {wat_path}")
            print(f"Error: {result.stderr}")
    except FileNotFoundError:
        print("❌ Error: wat2wasm not found. Please install wabt:")
        print("- Ubuntu/Debian: sudo apt install wabt")
        print("- macOS: brew install wabt")
        print("- Windows: Download from https://github.com/WebAssembly/wabt/releases")
        exit(1)

def main():
    print("🔍 Searching for WAT files...")
    wat_files = find_wat_files()
    
    if not wat_files:
        print("No WAT files found in the current directory or subdirectories.")
        return
    
    print(f"Found {len(wat_files)} WAT files")
    
    for wat_file in wat_files:
        convert_to_wasm(wat_file)
    
    print("\n✨ Conversion complete!")

if __name__ == "__main__":
    main()
