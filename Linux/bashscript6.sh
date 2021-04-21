#!/bin/bash
read -p "Enter the name and extension of the file to be deleted: " filename
echo "Type (y) to confirm of (n) if you change your mind."
rm -i $filename
echo "Request completed."