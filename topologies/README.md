# Network Topology Diagrams

This directory contains topology diagrams and documentation for the lab network environment.

## Structure

```
topologies/
├── physical/          # Physical topology diagrams
├── logical/           # Logical topology diagrams
├── vlan/             # VLAN topology diagrams
└── routing/          # Routing topology diagrams
```

## Supported Formats

- `.png`, `.jpg`, `.jpeg` - Image files
- `.svg` - Scalable vector graphics
- `.pdf` - PDF documents
- `.drawio` - Draw.io diagrams
- `.vsd`, `.vsdx` - Visio diagrams

## File Naming Convention

- Use descriptive names that indicate the type of topology
- Include version numbers or dates when applicable
- Examples:
  - `physical-topology-v1.png`
  - `logical-network-2024-01-15.svg`
  - `vlan-design-current.pdf`

## Documentation Guidelines

1. Include both high-level and detailed views
2. Label all devices with hostnames and IP addresses
3. Show connection types and speeds
4. Include VLAN assignments and routing protocols
5. Document any special configurations or constraints

## Integration with Configs

- Reference configuration files in topology documentation
- Use consistent device naming between topologies and configs
- Include port mappings and connection details