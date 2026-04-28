# Windows Security Controls Lab Portfolio

## Overview
This repository documents four hands-on Windows security labs focused on implementing and testing security controls in a lab environment.

These projects demonstrate practical experience with:
- preventive controls
- detective controls
- directive controls
- corrective controls
- Windows administration
- PowerShell
- auditing and log review
- file integrity validation

This repo is designed to showcase beginner-friendly but real security work relevant to entry-level cybersecurity, SOC, and IT/security roles.

---

## Lab 1: Windows Share Hardening and Least-Privilege Access Control

### Summary
Configured and tested a preventive control by hardening an SMB share and enforcing least privilege on a restricted administrative folder.

### Objective
A shared folder named `TOOLS` was intended for administrators only, but a non-administrative user was able to access it due to inherited permissions.

### Actions Performed
- Tested access to `\\10.1.16.1\TOOLS` using a non-admin account
- Confirmed unauthorized access was possible
- Reviewed share permissions in Server Manager
- Identified inherited permissions that granted broad access
- Removed inappropriate `Users` permissions
- Preserved access for approved administrative groups
- Retested using unauthorized and authorized accounts

### Validation
- Standard user access was blocked
- Authorized admin-level access still worked

### Security Outcome
This project demonstrates a **preventive technical control** because the final configuration stopped unauthorized access before it succeeded.

### Skills Demonstrated
- Windows Server administration
- SMB share permissions
- NTFS permissions
- least privilege
- access control testing
- troubleshooting

---

## Lab 2: Windows Object Access Auditing and Event Validation

### Summary
Implemented and tested a detective control by enabling object access auditing and validating deletion activity in Event Viewer.

### Objective
Create audit visibility for object access and deletion activity in Windows so that security-relevant actions could be investigated later.

### Actions Performed
- Enabled **Audit object access** in Local Security Policy
- Configured auditing on a target folder
- Applied auditing settings to child objects
- Deleted a test folder to trigger events
- Reviewed Security logs in Event Viewer
- Correlated object access and deletion-related events

### Validation
- Verified that deletion activity generated Windows Security log events
- Confirmed object path details in correlated event records

### Security Outcome
This project demonstrates a **detective technical control** because it records evidence of activity rather than preventing or repairing it.

### Skills Demonstrated
- Windows auditing
- Event Viewer analysis
- log interpretation
- event correlation
- file system monitoring

### Relevant Event IDs
- **4660** – Object deleted
- **4663** – An attempt was made to access an object

---

## Lab 3: Windows Login Banner via PowerShell and Registry

### Summary
Implemented a directive control by configuring a Windows legal notice banner through PowerShell and registry changes.

### Objective
Display an authorized-use warning to users before login to reinforce policy awareness and direct compliant behavior.

### Actions Performed
- Opened PowerShell as administrator
- Created banner caption and text values
- Wrote:
  - `LegalNoticeCaption`
  - `LegalNoticeText`
- Verified the registry values
- Signed out / restarted the system
- Confirmed the warning banner appeared before login

### Validation
- Verified registry settings were applied successfully
- Confirmed banner display at sign-in

### Security Outcome
This project demonstrates a **directive technical control** because it gives users instructions and policy awareness before access is granted.

### Skills Demonstrated
- PowerShell
- Windows Registry
- administrative configuration
- policy enforcement
- validation and troubleshooting

---

## Lab 4: PowerShell File Integrity Check and Corrective Control

### Summary
Built and tested a simple corrective control using PowerShell and SHA-256 hashing to detect unauthorized file changes and restore approved content.

### Objective
Monitor a file for unauthorized modification and automatically return it to its known-good state.

### Files Used
- `notes.txt`
- `hash.txt`
- `calchash.ps1`
- `check.ps1`

### Actions Performed
- Created `notes.txt` with approved content
- Generated a SHA-256 baseline hash and saved it in `hash.txt`
- Modified `notes.txt` to simulate tampering
- Compared the current file hash to the saved baseline hash
- Restored the approved content after mismatch detection
- Automated the logic using PowerShell scripts

### Validation
- Displayed modified file contents
- Ran the script to detect the change
- Verified that the file was restored automatically
- Confirmed the file returned to its approved content

### Security Outcome
This project demonstrates a **corrective technical control** because it detected an undesirable file state and restored the file to its intended secure condition.

### Skills Demonstrated
- PowerShell scripting
- SHA-256 hashing
- file integrity monitoring
- change detection
- corrective controls
- basic security automation

---

## What I Learned
These labs helped reinforce the difference between major security control types:

- **Preventive** controls stop unwanted activity
- **Detective** controls record or identify activity
- **Directive** controls guide users toward compliant behavior
- **Corrective** controls restore systems or files after an issue occurs

They also helped strengthen practical Windows security skills in access control, auditing, PowerShell, and validation testing.

---

## Why These Labs Matter
These projects reflect real security tasks that align with entry-level cybersecurity work, including:
- access control hardening
- log analysis
- security policy implementation
- integrity monitoring
- administrative troubleshooting

They are especially relevant for:
- SOC analyst roles
- junior cybersecurity roles
- IT support/security hybrid roles
- Security+ and CyberOps preparation

---

## Screenshots
Recommended screenshots for this repository:
- TOOLS share permissions before and after remediation
- Access denied for unauthorized user
- Successful share access for authorized admin
- Audit policy settings
- Event Viewer logs for object deletion
- PowerShell banner configuration
- Login warning banner on screen
- Hash generation and file restoration output

---

## Resume-Style Highlights
- Hardened a Windows SMB share by removing excessive inherited permissions and enforcing least-privilege access.
- Enabled and validated Windows object access auditing to capture deletion activity in Security logs.
- Configured a Windows legal notice banner through PowerShell and registry edits.
- Built a PowerShell-based file integrity workflow using SHA-256 hashing to detect and restore unauthorized file changes.

---

## Tools and Technologies
- Windows Server
- Windows 10
- PowerShell
- Server Manager
- Local Security Policy
- Event Viewer
- SMB/NTFS permissions
- SHA-256 hashing

---

## Repository Structure
```text
windows-security-controls-labs/
├── README.md
├── windows-share-hardening-least-privilege/
│   ├── README.md
│   └── screenshots/
├── windows-object-access-auditing/
│   ├── README.md
│   └── screenshots/
├── windows-login-banner-directive-control/
│   ├── README.md
│   └── screenshots/
└── powershell-file-integrity-corrective-control/
    ├── README.md
    ├── calchash.ps1
    ├── check.ps1
    └── screenshots/
