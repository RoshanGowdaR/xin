while true; do
    echo "File Handling Menu:"
    echo "1. Copy a file"
    echo "2. Remove a file"
    echo "3. Rename a file"
    echo "4. Create a link to a file"
    echo "5. Exit"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            read -p "Enter the source file name: " source_file
            read -p "Enter the destination file name: " destination_file
            cp "$source_file" "$destination_file"
            echo "$source_file copied to $destination_file successfully!"
            ;;
        2)
            read -p "Enter the file name to remove: " file_to_remove
            rm "$file_to_remove"
            echo "$file_to_remove removed successfully!"
            ;;
        3)
            read -p "Enter the current file name: " old_name
            read -p "Enter the new file name: " new_name
            mv "$old_name" "$new_name"
            echo "$old_name renamed to $new_name successfully!"
            ;;
        4)
            read -p "Enter the source file name: " source_file
            read -p "Enter the link name: " link_name
            ln "$source_file" "$link_name"
            echo "Link created successfully! $link_name points to $source_file"
            ;;
        5)
            echo "Exiting program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
