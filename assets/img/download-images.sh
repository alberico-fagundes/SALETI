#!/bin/bash
# Script to download all images for the SALETI site from Wayback Machine
# Run this script from within the SALETI/assets/img/ directory

echo "Downloading images for SALETI site from Wayback Machine..."
echo "Using snapshot from: 2025-04-02 20:09:17"
echo ""

# Array of image files to download
images=(
    "logo.png"
    "favicon.png"
    "about.png"
    "bg.jpeg"
    "amb-1.png"
    "amb-2.jpg"
    "amb-3.jpg"
    "amb-4.png"
    "amb-5.png"
    "amb-7.jpg"
    "amb-9.png"
)

# Base URL for Wayback Machine
base_url="https://web.archive.org/web/20250402200917im_/"
source_base="https://www.ambulanciasdealuguel.com.br/assets/img/"

# Download each image
for image in "${images[@]}"; do
    url="${base_url}${source_base}${image}"
    echo "Downloading: $image"
    echo "From: $url"
    
    # Try wget first, then curl if wget fails
    if command -v wget >/dev/null 2>&1; then
        wget -O "$image" "$url" --quiet --show-progress
        if [ $? -eq 0 ]; then
            echo "✓ Successfully downloaded $image"
        else
            echo "✗ Failed to download $image with wget, trying curl..."
            if command -v curl >/dev/null 2>&1; then
                curl -s -o "$image" "$url"
                if [ $? -eq 0 ]; then
                    echo "✓ Successfully downloaded $image with curl"
                else
                    echo "✗ Failed to download $image with curl"
                fi
            else
                echo "✗ Neither wget nor curl available. Please download manually:"
                echo "  $url"
            fi
        fi
    elif command -v curl >/dev/null 2>&1; then
        curl -s -o "$image" "$url"
        if [ $? -eq 0 ]; then
            echo "✓ Successfully downloaded $image"
        else
            echo "✗ Failed to download $image with curl"
        fi
    else
        echo "✗ Neither wget nor curl available. Please download manually:"
        echo "  $url"
    fi
    echo ""
done

echo "Image download process completed!"
echo "If any downloads failed, please download them manually using:"
for image in "${images[@]}"; do
    echo "  wget \"${base_url}${source_base}${image}\" -O \"$image\""
done