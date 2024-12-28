#!/bin/bash

# Define the URL of the file to download
file_url="https://github.com/jakbin/telegram-bot-api-binary/releases/download/latest/telegram-bot-api"

# Define the filename (extracted from the URL)
filename=$(basename "$file_url")

# Check if the file already exists in the current directory
if [ -e "$filename" ]; then
    echo "File '$filename' already exists in the current directory."
    echo "Running telegram-bot-api server"
    chmod +x $filename
    ./$filename --api-id=$1 --api-hash=$2 --local
else
    # Download the file if it doesn't exist
    echo "Downloading '$filename'..."
    if command -v wget >/dev/null 2>&1; then
        wget "$file_url"
    elif command -v curl >/dev/null 2>&1; then
        curl -L -O "$file_url"
    else
        echo "Error: Neither 'wget' nor 'curl' is available. Cannot download the file."
        exit 1
    fi

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Download successful!"
        chmod +x $filename
        echo "Running telegram-bot-api server"
        ./$filename --api-id=$1 --api-hash=$2 --local
    else
        echo "Error: Failed to download '$filename'."
        exit 1
    fi
fi
