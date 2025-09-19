# Arista Network Lab - Troubleshooting Repository

A comprehensive repository for managing network configurations, topology diagrams, and troubleshooting documentation for Arista lab environments.

## 🚀 Quick Start

This repository is designed to help you systematically troubleshoot network issues by organizing configurations, topology diagrams, and documentation in a structured manner.

### Repository Structure

```
├── configs/                    # Network device configurations
│   ├── switches/              # Switch configurations  
│   ├── routers/               # Router configurations
│   ├── access-points/         # Access point configurations
│   └── firewalls/             # Firewall configurations
├── topologies/                # Network topology diagrams
│   ├── physical/              # Physical topology diagrams
│   ├── logical/               # Logical topology diagrams
│   ├── vlan/                  # VLAN topology diagrams
│   └── routing/               # Routing topology diagrams
├── docs/                      # Documentation and procedures
│   ├── troubleshooting/       # Troubleshooting guides
│   └── procedures/            # Standard operating procedures
└── scripts/                   # Automation scripts and tools
```

## 📋 Troubleshooting Workflow

### 1. Upload Network Information

**Configuration Files**
- Place device configurations in the appropriate `configs/` subdirectory
- Use descriptive filenames: `device-name_YYYY-MM-DD.cfg`
- Supported formats: `.cfg`, `.txt`, `.json`, `.yaml`

**Topology Diagrams** 
- Upload network diagrams to the appropriate `topologies/` subdirectory
- Include both physical and logical views
- Supported formats: `.png`, `.jpg`, `.svg`, `.pdf`, `.drawio`

### 2. Document the Issue

- Use the troubleshooting template: `docs/troubleshooting/troubleshooting-template.md`
- Include symptoms, affected systems, and impact assessment
- Reference relevant configuration files and topology diagrams

### 3. Systematic Analysis

- Review configurations against topology diagrams
- Check for inconsistencies and misconfigurations
- Document findings and root cause analysis
- Plan and implement solutions incrementally

### 4. Document Resolution

- Update troubleshooting report with solution details
- Archive configurations showing the resolved state
- Share lessons learned with the team

## 🛠️ Tools and Scripts

### Configuration Backup
```bash
# Backup all device configurations
./scripts/backup-configs.sh all

# Backup specific device type
./scripts/backup-configs.sh switches
```

### File Organization
- Follow the naming conventions documented in each directory's README
- Use consistent device naming across configurations and topologies
- Include timestamps when maintaining version history

## 📚 Documentation Templates

- **Troubleshooting Report**: `docs/troubleshooting/troubleshooting-template.md`
- **Change Procedure**: `docs/procedures/change-procedure-template.md`

## 🔍 Best Practices

### Information Gathering
1. **Collect Complete Data**: Gather all relevant configurations and topology information
2. **Document Current State**: Capture the current network state before making changes
3. **Reference Diagrams**: Always correlate configurations with topology diagrams

### Analysis Approach
1. **Start with Topology**: Understand the intended network design
2. **Verify Configurations**: Check configurations against design intent
3. **Test Incrementally**: Make small, testable changes
4. **Document Everything**: Keep detailed records of analysis and changes

### Problem Resolution
1. **Backup First**: Always backup configurations before making changes
2. **Test in Isolation**: Use lab environments when possible
3. **Verify Solutions**: Confirm fixes resolve the root cause
4. **Update Documentation**: Keep topology and documentation current

## 📖 Usage Examples

### Adding New Device Configurations
```bash
# 1. Save configuration file
cp device-config.cfg configs/switches/spine-01_2024-01-15.cfg

# 2. Update topology if needed
# Add new topology diagram to topologies/physical/

# 3. Document any changes
# Use docs/procedures/change-procedure-template.md
```

### Troubleshooting Network Issue
```bash
# 1. Create troubleshooting report
cp docs/troubleshooting/troubleshooting-template.md docs/troubleshooting/issue-001-connectivity.md

# 2. Reference configurations and topologies in the report
# 3. Document investigation steps and findings
# 4. Update with resolution details
```

## 🤝 Contributing

1. Upload configuration files to appropriate directories
2. Include topology diagrams with clear labeling
3. Use provided templates for documentation
4. Follow naming conventions consistently
5. Keep documentation updated with changes

## 📞 Support

For questions about network troubleshooting methodology or repository organization, refer to the documentation in the `docs/` directory or consult with the network engineering team.
