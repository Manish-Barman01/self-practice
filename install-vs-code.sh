#!/bin/bash

set -e  # Stop the script if any command fails

echo "Download the .deb file from this link:"
echo "https://code.visualstudio.com/Download"
echo "Check karo file download ho gaya hai."
echo "Uske baad Press enter to continue..."
read  # Wait for user to press enter
echo "--------------------"
echo "File ko copy karo."
echo "--------------------"

ls -ltrsh /home/manish/Downloads/code*
echo "Press enter to continue..."
read  # Wait for user to press enter

while true; do
    read -p "Please enter the name of the downloaded file (e.g., code_1.95.0-1730153583_amd64.deb): " file

    # Confirm file name
    read -p "You entered: $file. Press 'r' to redo, or press enter to continue: " confirm

    if [[ "$confirm" == "r" ]]; then
        echo "Redoing..."
    else
        # Check if the file exists
        if [ -f "$file" ]; then
            echo "Installing $file..."
            sudo apt install ./"$file"  # This will prompt for the password
            break  # Exit the loop if installation is successful
        else
            echo "File not found: $file. Please enter the correct file name."
        fi
    fi
done
