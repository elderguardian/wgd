#!/bin/bash

folder_path="/data/configs"

for config in "$folder_path"/*.conf; do
    echo "Connecting to $config..."
    wg-quick up "$config"

    if [ $? -eq 0 ]; then
        echo "Connected successfully to $config."
        exit 0
    else
        echo "Failed to connect to $config. Trying the next one..."
        wg-quick down "$config"
    fi
done

echo "Unable to connect to any WireGuard configuration."
exit 1
