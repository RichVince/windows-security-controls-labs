
# Windows Object Access Auditing and Event Validation

## Overview
This project demonstrates how I implemented and tested a detective control by enabling Windows object access auditing and validating deletion activity in Event Viewer.

## Objective
The goal was to create audit visibility for object access and deletion activity in Windows so that security-relevant actions could be investigated later.

## Actions Performed
- Enabled **Audit object access** in Local Security Policy
- Configured auditing on a target folder
- Applied auditing settings to child objects
- Deleted a test folder to trigger events
- Reviewed Security logs in Event Viewer
- Correlated object access and deletion-related events

## Validation
- Verified that deletion activity generated Windows Security log events
- Confirmed object path details in correlated event records

## Security Outcome
This project demonstrates a **detective technical control** because it records evidence of activity rather than preventing or repairing it.

## Skills Demonstrated
- Windows auditing
- Event Viewer analysis
- log interpretation
- event correlation
- file system monitoring

## Relevant Event IDs
- **4660** – Object deleted
- **4663** – An attempt was made to access an object

## Control Type
- **Category:** Technical
- **Function:** Detective
