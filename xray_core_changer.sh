#!/bin/bash

update_xray() {
    local version=$1
    local url=$2

    # Backup existing xray
    mv /usr/local/bin/xray /usr/local/bin/xray-bak

    # Download and install new xray
    curl -L "$url" > Xray-linux-64.zip
    unzip Xray-linux-64.zip
    mv xray /usr/local/bin
    chmod +x /usr/local/bin/xray

    # Clean up
    rm *.zip *.dat LICENSE README.md

    systemctl daemon-reload
    systemctl restart xray
    systemctl restart xray.service

    # Display new version
    xray version
}

echo "Xray Core Update Script"
echo "1. Select from official versions"
echo "2. Enter custom URL"
read -p "Choose an option (1 or 2): " choice

case $choice in
    1)
        echo "Fetching available versions..."
        versions=$(curl -s https://api.github.com/repos/XTLS/Xray-core/releases | grep -oP '"tag_name": "\K(.*)(?=")')
        echo "Available versions:"
        select version in $versions; do
            if [ -n "$version" ]; then
                url="https://github.com/XTLS/Xray-core/releases/download/$version/Xray-linux-64.zip"
                update_xray "$version" "$url"
                break
            else
                echo "Invalid selection. Please try again."
            fi
        done
        ;;
    2)
        read -p "Enter the custom Xray core URL: " custom_url
        update_xray "custom" "$custom_url"
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

echo "Xray core update completed."
