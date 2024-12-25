if [ $# -ne 2 ]; then
    echo "Usage: $0 <base> <exponent>"
    exit 1
fi

base=$1
exponent=$2

result=$(echo "$base^$exponent" | bc)

echo "$base raised to the power of $exponent is: $result"
