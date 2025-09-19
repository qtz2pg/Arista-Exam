# Configuration Index

Quick reference for finding specific Arista configurations.

## 🔧 Basic Device Setup
| Configuration | File | Description |
|---------------|------|-------------|
| Initial setup | `basic-switch.cfg` | Hostname, management IP, SSH, users |
| Management access | `management.cfg` | VRF, SSH, API, security |
| Interface basics | `interfaces.cfg` | Access, trunk, L3, port-channel |

## 🏗️ Network Services
| Feature | File | Description |
|---------|------|-------------|
| VLANs | `vlans.cfg` | VLAN creation, access/trunk ports, SVIs |
| Routing | `routing.cfg` | OSPF, BGP, static routes, ACLs |

## 🌐 Complete Scenarios
| Scenario | Files | Description |
|----------|-------|-------------|
| Campus Network | `scenarios/scenario1.md`<br>`scenarios/core-router.cfg`<br>`scenarios/distribution-switch.cfg`<br>`scenarios/access-switch.cfg` | Complete 3-tier campus network with VLANs, routing, and security |

## 📋 Configuration Features Covered

### Layer 2 Features
- [x] VLAN configuration and management
- [x] Trunk and access port configuration
- [x] Spanning Tree Protocol (MSTP)
- [x] Port security
- [x] DHCP snooping
- [x] BPDU Guard and PortFast

### Layer 3 Features
- [x] Inter-VLAN routing (SVIs)
- [x] OSPF configuration
- [x] BGP configuration
- [x] Static routing
- [x] Loopback interfaces
- [x] Router ID configuration

### Management Features
- [x] SSH configuration
- [x] User accounts and privilege levels
- [x] SNMP configuration
- [x] NTP configuration
- [x] Management VRF
- [x] API access

### Security Features
- [x] Access Control Lists (ACLs)
- [x] Management access restrictions
- [x] Port security
- [x] DHCP snooping
- [x] Password policies

### High Availability Features
- [x] LACP port-channels
- [x] MLAG configuration examples
- [x] Redundant routing

## 🎓 Study Path Recommendation

1. **Start Here**: `basic-switch.cfg` - Learn fundamental device setup
2. **Network Basics**: `interfaces.cfg` - Understand different interface types
3. **VLANs**: `vlans.cfg` - Master VLAN configuration and trunking
4. **Routing**: `routing.cfg` - Learn Layer 3 protocols
5. **Complete Setup**: `scenarios/` - Practice full network deployment

## 💡 Tips for Exam Success

- Practice typing configurations without copy/paste
- Understand the logic behind each command
- Know how to verify configurations with show commands
- Practice troubleshooting common issues
- Time yourself on configuration tasks