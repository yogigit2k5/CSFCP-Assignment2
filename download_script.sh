#!/bin/bash
# Purpose: Download a file automatically (Requirement 2.3c)
# Author: Sakshi Yogi

url="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"
filename="google_logo.png"

echo "Starting download from $url..."

# Download using wget (-O names the file)
wget -O "$filename" "$url"

# Check if it worked
if [ -f "$filename" ]; then
    echo "Success! File saved as: $filename"
else
    echo "Error: Download failed."
fi
