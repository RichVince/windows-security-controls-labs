# PowerShell File Integrity Check and Corrective Control

## Overview
This project demonstrates how I created and tested a simple corrective control using PowerShell and SHA-256 hashing to detect unauthorized file changes and restore approved content.

## Objective
The goal was to monitor a file for unauthorized modification and automatically return it to its known-good state.

## Files Used
- `notes.txt`
- `hash.txt`
- `calchash.ps1`
- `check.ps1`

## Actions Performed
- Created `notes.txt` with approved content
- Generated a SHA-256 baseline hash and saved it in `hash.txt`
- Modified `notes.txt` to simulate tampering
- Compared the current file hash to the saved baseline hash
- Restored the approved content after mismatch detection
- Automated the hash generation and correction steps using PowerShell

## Validation
- Confirmed that file tampering changed the hash
- Ran `check.ps1` to detect the unauthorized change
- Verified the script restored the correct file contents

## Security Outcome
This project demonstrates a **corrective technical control** because it detects an undesirable file state and restores the file to its intended secure condition.

## Skills Demonstrated
- PowerShell scripting
- SHA-256 hashing
- file integrity monitoring
- change detection
- corrective controls
- basic security automation

## Scripts
### `calchash.ps1`
```powershell
Get-FileHash ./notes.txt -Algorithm SHA256 | Select-Object -ExpandProperty Hash | Set-Content ./hash.txt
