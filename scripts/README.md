# Scripts and Automation Tools

This directory contains scripts and tools to help with network management and troubleshooting tasks.

## Available Scripts

### backup-configs.sh
Automated configuration backup script that can backup configurations from network devices.

**Usage:**
```bash
# Backup all device types
./backup-configs.sh all

# Backup specific device type
./backup-configs.sh switches
./backup-configs.sh routers
./backup-configs.sh firewalls

# Specify custom output directory
./backup-configs.sh switches /path/to/backup/dir
```

**Features:**
- Timestamps all backup files
- Organizes backups by device type
- Supports multiple device types
- Customizable device inventory

## Adding New Scripts

When adding new automation scripts:

1. Make scripts executable: `chmod +x script-name.sh`
2. Include usage documentation in script comments
3. Follow consistent naming conventions
4. Test scripts thoroughly before use
5. Update this README with new script information

## Configuration

Edit the device inventory in `backup-configs.sh` to match your environment:

```bash
# Example device inventory
DEVICES[switch]="10.1.1.1:spine-01 10.1.1.2:spine-02"
DEVICES[router]="10.1.1.100:core-router-01"
```

## Dependencies

- bash (for shell scripts)
- ssh/scp access to network devices
- Appropriate network connectivity to target devices