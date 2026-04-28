# Windows Share Hardening and Least-Privilege Access Control

## Overview
This project demonstrates how I configured and tested a preventive security control in a Windows Server environment by hardening an SMB share and enforcing least privilege.

## Objective
A shared folder named `TOOLS` was intended for administrators only, but a non-administrative user was able to access it due to inherited permissions.

## Actions Performed
- Tested access to `\\10.1.16.1\TOOLS` using a non-admin account
- Confirmed unauthorized access was possible
- Reviewed share permissions in Server Manager
- Identified inherited permissions that granted broad access
- Removed inappropriate `Users` permissions
- Preserved access for approved administrative groups
- Retested using unauthorized and authorized accounts

## Validation
- Standard user access was blocked
- Authorized admin-level access still worked

## Security Outcome
This project demonstrates a **preventive technical control** because the final configuration stopped unauthorized access before it succeeded.

## Skills Demonstrated
- Windows Server administration
- SMB share permissions
- NTFS permissions
- least privilege
- access control testing
- troubleshooting

## Control Type
- **Category:** Technical
- **Function:** Preventive
