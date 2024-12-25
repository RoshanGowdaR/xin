if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_string> <file>"
    exit 1
fi

search_string="$1"
file="$2"

if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    exit 1
fi

count=$(grep -o -i "$search_string" "$file" | wc -l)

echo "Number of occurrences of '$search_string' in '$file': $count"
