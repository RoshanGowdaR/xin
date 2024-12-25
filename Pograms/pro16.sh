while true; do
    echo "File Handling Menu:"
    echo "1. List of users who are logged in"
    echo "2. List of files in the current directory"
    echo "3. List of processes of user"
    echo "4. Today’s Date"
    echo "5. Quit Unix"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            echo "List of Users who have logged in”
	    who
            ;;
        2)
           echo "List of files in current directory"
	   ls -l
            ;;
        3)
         echo " List of processes of users "
          ps aux
            ;;
        4)
          echo " Today’s date "
          date
            ;;
        5)
            echo "Quiting program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
