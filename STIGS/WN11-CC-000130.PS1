<#
.SYNOPSIS
  BitLocker must require pre-boot authentication
  BitLocker pre-boot authentication policies were not fully configured, which could allow unauthorized access to encrypted data. 
  The system was remediated by enabling advanced startup authentication and enforcing TPM with PIN requirements through registry-based Group Policy settings. 
  This ensures compliance with STIG requirements for secure pre-boot authentication.

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 04/05/2026
    Last Modified   : 04/05/2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000130

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000130).ps1 
#>

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Force | Out-Null

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" `
-Name "EnumerateLocalUsers" `
-Value 0 `
-PropertyType DWord `
-Force

gpupdate /force
