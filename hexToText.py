#!/usr/bin/env python3

def hex_to_binary(hex_string):
    """Convert hex string to binary, handling WASM content."""
    # Remove any spaces and 0x prefixes
    hex_string = hex_string.replace(' ', '').replace('0x', '')
    
    try:
        # Convert hex to bytes
        binary_data = bytes.fromhex(hex_string)
        
        # Create a detailed analysis of the binary
        analysis = []
        
        # Check for WASM magic number
        if len(binary_data) >= 4 and binary_data[0:4] == b'\x00\x61\x73\x6d':
            analysis.append("WASM Magic Number detected: \\x00asm")
            
            # Try to parse WASM version if available
            if len(binary_data) >= 8:
                version = '.'.join(str(b) for b in binary_data[4:8])
                analysis.append(f"WASM Version: {version}")
        
        # Show raw bytes for inspection
        byte_view = ' '.join(f'{b:02x}' for b in binary_data)
        analysis.append("\nHex bytes:")
        
        # Split into chunks of 16 bytes for readability
        CHUNK_SIZE = 16
        for i in range(0, len(byte_view), CHUNK_SIZE * 3):
            analysis.append(byte_view[i:i + CHUNK_SIZE * 3])
            
        # Try to extract any ASCII strings
        ascii_chars = []
        current_string = []
        
        for byte in binary_data:
            if 32 <= byte <= 126:  # printable ASCII range
                current_string.append(chr(byte))
            elif current_string:
                if len(current_string) >= 3:  # only show strings of 3+ chars
                    ascii_chars.append(''.join(current_string))
                current_string = []
                
        if current_string and len(current_string) >= 3:
            ascii_chars.append(''.join(current_string))
            
        if ascii_chars:
            analysis.append("\nDetected ASCII strings:")
            for string in ascii_chars:
                analysis.append(f"  - {string}")
        
        return '\n'.join(analysis)
        
    except ValueError as e:
        return f"Error: Invalid hex string - {str(e)}"

def process_file(input_file, output_file):
    """Process a file containing hex strings and analyze them."""
    try:
        with open(input_file, 'r') as f:
            hex_strings = f.readlines()
        
        results = []
        for line_number, hex_string in enumerate(hex_strings, 1):
            hex_string = hex_string.strip()
            if not hex_string:  # Skip empty lines
                continue
                
            analysis = hex_to_binary(hex_string)
            results.append(f"\n=== Line {line_number} Analysis ===\n{analysis}\n")
        
        with open(output_file, 'w') as f:
            f.write('\n'.join(results))
            
        print(f"Analysis completed! Results written to {output_file}")
        
    except FileNotFoundError:
        print(f"Error: Input file '{input_file}' not found")
    except Exception as e:
        print(f"Error occurred: {str(e)}")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='Analyze hex strings from a file, with special handling for WASM content')
    parser.add_argument('input_file', help='Input file containing hex strings (one per line)')
    parser.add_argument('-o', '--output', default='analysis.txt', help='Output file (default: analysis.txt)')
    
    args = parser.parse_args()
    
    process_file(args.input_file, args.output)

if __name__ == '__main__':
    main()