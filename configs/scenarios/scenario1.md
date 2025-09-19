# Exam Scenario 1: Campus Network Setup

This scenario covers a typical campus network setup with multiple VLANs, inter-VLAN routing, and basic security features.

## Network Topology
```
    [Internet]
        |
   [Core Router]
        |
  [Distribution Switch]
     /    |    \
[Access] [Access] [Access]
  SW1     SW2     SW3
```

## Requirements
- Configure VLANs 10, 20, 30, 100
- Set up inter-VLAN routing
- Configure OSPF for internal routing
- Implement basic security (ACLs)
- Configure management access

## Files
- `core-router.cfg` - Core router configuration
- `distribution-switch.cfg` - Distribution layer switch
- `access-switch.cfg` - Access layer switch template

## IP Addressing Scheme
- VLAN 10 (Sales): 10.1.10.0/24
- VLAN 20 (Engineering): 10.1.20.0/24
- VLAN 30 (Management): 10.1.30.0/24
- VLAN 100 (Servers): 10.1.100.0/24
- Point-to-point links: 192.168.x.x/30