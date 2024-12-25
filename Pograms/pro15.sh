echo "Enter the string:"
read str

strlen=${#str}    

echo "The length of the given string '$str' is: $strlen"

echo "Enter the starting position in the main string:"
read s1

echo "Enter the ending position in the main string:"
read f1

substring=$(echo "$str" | cut -c "$s1"-"$f1")
echo "Substring from position $s1 to position $f1: $substring"
