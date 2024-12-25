count=1

while [ $count -le 5 ]; do
    echo "Displaying all processes (Run #$count):"
    ps aux
    sleep 30
    ((count++))
done
