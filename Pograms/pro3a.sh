if [ -z "$1" ]; then
      echo "Error: Pattern not entered. Please provide a pattern."
             exit 1
fi

if [ -z "$2" ]; then
      echo "Error: File not entered. Please provide a file."
             exit 1
fi

pattern="$1"
file="$2"

result=$(grep -o -i "$pattern" "$file")

if [ -z "$result" ]; then
      echo "Pattern '$pattern' not found in file '$file'."
else
      echo "Occurrences of pattern '$pattern' in file '$file':"

    echo "$result"
fi
