#!/bin/bash

# Network Configuration Backup Script
# Usage: ./backup-configs.sh [device-type] [output-directory]

DEVICE_TYPE=${1:-"all"}
OUTPUT_DIR=${2:-"configs/backups"}
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "Starting network configuration backup at $(date)"
echo "Device type: $DEVICE_TYPE"
echo "Output directory: $OUTPUT_DIR"

# Function to backup device configurations
backup_device() {
    local device_ip=$1
    local device_type=$2
    local hostname=$3
    
    echo "Backing up $hostname ($device_ip)..."
    
    # Create filename with timestamp
    local filename="${hostname}_${TIMESTAMP}.cfg"
    local backup_path="$OUTPUT_DIR/$device_type/$filename"
    
    # Create device type directory
    mkdir -p "$OUTPUT_DIR/$device_type"
    
    # Example backup command (adjust based on your device type)
    # For Arista devices:
    # scp admin@$device_ip:/mnt/flash/startup-config "$backup_path"
    
    # For now, create a placeholder
    echo "# Configuration backup for $hostname" > "$backup_path"
    echo "# Timestamp: $(date)" >> "$backup_path"
    echo "# Device IP: $device_ip" >> "$backup_path"
    echo "# Device Type: $device_type" >> "$backup_path"
    
    echo "Backup completed: $backup_path"
}

# Device inventory (customize based on your environment)
declare -A DEVICES
DEVICES[switch]="10.1.1.1:spine-01 10.1.1.2:spine-02 10.1.1.10:leaf-01 10.1.1.11:leaf-02"
DEVICES[router]="10.1.1.100:core-router-01 10.1.1.101:border-router-01"
DEVICES[firewall]="10.1.1.200:firewall-01"

# Backup based on device type
if [ "$DEVICE_TYPE" = "all" ]; then
    for device_type in "${!DEVICES[@]}"; do
        echo "Processing $device_type devices..."
        for device_info in ${DEVICES[$device_type]}; do
            IFS=':' read -r ip hostname <<< "$device_info"
            backup_device "$ip" "$device_type" "$hostname"
        done
    done
else
    if [ -n "${DEVICES[$DEVICE_TYPE]}" ]; then
        echo "Processing $DEVICE_TYPE devices..."
        for device_info in ${DEVICES[$DEVICE_TYPE]}; do
            IFS=':' read -r ip hostname <<< "$device_info"
            backup_device "$ip" "$DEVICE_TYPE" "$hostname"
        done
    else
        echo "Error: Unknown device type '$DEVICE_TYPE'"
        echo "Available types: ${!DEVICES[*]}"
        exit 1
    fi
fi

echo "Backup completed at $(date)"
echo "All configuration files saved to: $OUTPUT_DIR"