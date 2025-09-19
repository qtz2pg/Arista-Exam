# Configuration Change Procedure Template

## Change Information

**Date:** [YYYY-MM-DD]  
**Engineer:** [Name]  
**Change ID:** [Unique identifier]  
**Priority:** [Emergency/High/Medium/Low]

## Change Description

### Objective
[Describe what this change is intended to accomplish]

### Scope
- Affected devices: [list]
- Affected services: [list]
- Maintenance window: [start/end times]

## Pre-Change Documentation

### Current State
- Topology reference: `topologies/[filename]`
- Current configurations: `configs/[files]`
- Current performance baseline: [metrics]

### Risk Assessment
- **Risk Level:** [High/Medium/Low]
- **Potential Impact:** [describe]
- **Mitigation:** [backup/rollback plans]

## Implementation Plan

### Preparation Steps
- [ ] Backup current configurations
- [ ] Verify topology documentation is current
- [ ] Prepare rollback procedures
- [ ] Schedule maintenance window
- [ ] Notify stakeholders

### Implementation Steps
1. [Step 1 with expected outcome]
2. [Step 2 with expected outcome]
3. [Step 3 with expected outcome]

### Validation Steps
- [ ] Test basic connectivity
- [ ] Verify service functionality
- [ ] Check monitoring systems
- [ ] Confirm performance metrics

## Rollback Plan

### Trigger Conditions
[Define when rollback should be initiated]

### Rollback Steps
1. [Rollback step 1]
2. [Rollback step 2]
3. [Rollback step 3]

### Recovery Time Estimate
[Expected time to complete rollback]

## Post-Change Documentation

### Configuration Updates
- Modified files: [list and location]
- New configurations: [location in configs/]
- Updated topology: [location in topologies/]

### Verification Results
- [ ] All tests passed
- [ ] Services operating normally
- [ ] Performance within expected range
- [ ] No unintended side effects

### Issues Encountered
[Document any problems and their resolution]

## Sign-off

**Implementer:** [Name/Date]  
**Reviewer:** [Name/Date]  
**Approver:** [Name/Date]