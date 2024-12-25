if [ "$#" -ne 1 ]; then
            echo "Usage: $0 <login_name>"
                exit 1
fi

login_name=$1

last_login_info=$(last "$login_name")

echo "$last_login_info"
