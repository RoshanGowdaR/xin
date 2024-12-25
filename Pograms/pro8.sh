if [ $# -eq 0 ]; then
  echo "Usage: $0 <file1> [file2 file3 ...]"
  exit 1
fi

for file in "$@"; do
  if [ -e "$file" ]; then
    # Convert the file name to uppercase and rename the file
    new_name=$(echo "$file" | tr '[:lower:]' '[:upper:]')
    mv "$file" "$new_name"
    echo "Converted $file to $new_name"
  else
    echo "File $file does not exist."
  fi
done
