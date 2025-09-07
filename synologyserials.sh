#!/bin/bash
#version 1.0

current_id=""
current_path=""
current_model=""
current_capacity=""

sudo synodisk --enum | while read -r line; do
    case "$line" in
        ">> Disk id:"*)
            current_id=$(echo "$line" | awk '{print $4}')
            ;;
        ">> Disk path:"*)
            current_path=$(echo "$line" | awk '{print $4}')
            ;;
        ">> Disk model:"*)
            current_model=$(echo "$line" | awk '{print $4}')
            ;;
        ">> Total capacity:"*)
            current_capacity=$(echo "$line" | awk '{print $4 " " $5}')
            # Prefer smartctl's 'Serial number:' (lowercase) field
            serial=$(sudo smartctl -i "$current_path" 2>/dev/null | awk -F: '/Serial [nN]umber/ {print $2}' | xargs)
            echo "Bay $current_id ($current_path) → Model: $current_model | Capacity: $current_capacity | Serial: $serial"
            ;;
    esac
done
