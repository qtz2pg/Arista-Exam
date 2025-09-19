# Network Device Configurations

This directory contains configuration files for network devices in the lab environment.

## Structure

```
configs/
├── switches/           # Switch configurations
├── routers/           # Router configurations
├── access-points/     # Wireless access point configurations
└── firewalls/         # Firewall configurations
```

## File Naming Convention

- Use descriptive names that include device type and identifier
- Example: `spine-01.cfg`, `leaf-02.cfg`, `core-router-01.cfg`
- Include timestamps in filenames when capturing multiple versions
- Example: `spine-01_2024-01-15.cfg`

## Supported Formats

- `.cfg` - Standard configuration files
- `.txt` - Text-based configurations
- `.json` - JSON-formatted configurations
- `.yaml` - YAML-formatted configurations

## Usage

1. Place device configurations in appropriate subdirectories
2. Use clear, descriptive filenames
3. Include comments in configuration files where helpful
4. Reference topology diagrams when documenting complex setups