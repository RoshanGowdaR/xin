if [ $# -eq 0 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path=$1

if [ ! -e "$path" ]; then
  echo "Error: $path does not exist."
  exit 1
fi

if [ -d "$path" ]; then
  echo "$path is a directory."

elif [ -f "$path" ]; then
  echo "$path is a regular file."
else
  echo "$path is something else (not a directory or a regular file)."
fi
