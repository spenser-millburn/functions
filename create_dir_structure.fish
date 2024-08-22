function create_dir_structure
#!/usr/bin/env fish

# Check if an argument is passed
if test (count $argv) -eq 0
    echo "Usage: ./create_structure.fish <input_file>"
    exit 1
end

# Get the input file from the arguments
set input_file $argv[1]

# Create a temporary Python script
set temp_script (mktemp)

# Write the Python code to the temporary script
echo 'import os

def create_structure_from_file(file_path):
    with open(file_path, '\''r'\'') as file:
        for line in file:
            path = line.strip()
            if path.endswith('\''/'\''):
                # Create directory
                os.makedirs(path, exist_ok=True)
                print(f"Created directory: {path}")
            else:
                # Create file
                os.makedirs(os.path.dirname(path), exist_ok=True)
                with open(path, '\''w'\'') as f:
                    pass
                print(f"Created file: {path}")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python script.py <input_file>")
        sys.exit(1)
    create_structure_from_file(sys.argv[1])' > $temp_script

# Execute the Python script with the input file
python3 $temp_script $input_file

# Clean up
rm $temp_script

end
