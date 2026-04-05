<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 2026-04-04
    Last Modified   : 2026-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-AU-000500).ps1 
#>

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application" -Force | Out-Null

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application" `
  -Name "MaxSize" `
  -Value 0x8000 `
  -PropertyType DWord `
  -Force
