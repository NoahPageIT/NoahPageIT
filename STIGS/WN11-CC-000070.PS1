<#
.SYNOPSIS
    Virtualization-Based Security must be enabled
    Virtualization-Based Security (VBS) was not enabled, reducing protections against credential theft and kernel-level exploits.
    The system was remediated by enabling VBS through Device Guard registry settings. Full compliance may require compatible hardware and a system reboot.

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 04/05/2026
    Last Modified   : 04/05/2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000070

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000070).ps1 
#>

New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard" -Force | Out-Null

New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard" `
-Name "EnableVirtualizationBasedSecurity" `
-Value 1 `
-PropertyType DWord `
-Force

New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard" `
-Name "RequirePlatformSecurityFeatures" `
-Value 1 `
-PropertyType DWord `
-Force

Write-Host "✔ VBS partially enabled (may require reboot for full compliance)"
