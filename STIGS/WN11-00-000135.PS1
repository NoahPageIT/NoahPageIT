<#
.SYNOPSIS
    Host-based firewall must be enabled
The Windows Defender Firewall was not enabled across all network profiles, increasing exposure to unauthorized network traffic. The system was remediated by enabling the firewall for Domain, Private, and Public profiles using PowerShell, ensuring consistent protection across all network connections.

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 04/05/2026
    Last Modified   : 04/05/2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000135

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-00-000135).ps1 
#>

Set-NetFirewallProfile -Profile Domain -Enabled True
Set-NetFirewallProfile -Profile Private -Enabled True
Set-NetFirewallProfile -Profile Public -Enabled True

Write-Host "✔ Firewall enabled for all profiles"
