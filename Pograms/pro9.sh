# Prompt user for the word to search for
echo "Enter the word to search for in all lines:"
read -r word

# Check if the correct number of arguments is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file1> [file2 ...]"
    exit 1
fi

echo "The file names are: $*"

# Loop through all files provided as arguments
for file in "$@"; do
    # Check if the file exists
    if [ ! -e "$file" ]; then
        echo "File '$file' not found. Skipping..."
        continue
    fi

    echo "Lines in '$file' not containing '$word':"
    grep -v "$word" "$file"
done
