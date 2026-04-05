<#
.SYNOPSIS
    PortProxy must not be enabled

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 04/05/2026
    Last Modified   : 04/05/2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000395

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-00-000395).ps1 
#>

netsh interface portproxy reset

Write-Host "✔ PortProxy cleared"
