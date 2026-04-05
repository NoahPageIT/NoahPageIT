<#
.SYNOPSIS
  Do not enumerate local users
  Local user enumeration was enabled, potentially exposing account information to unauthorized users.
  The system was remediated by disabling the enumeration of local users through policy-based registry configuration.

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
