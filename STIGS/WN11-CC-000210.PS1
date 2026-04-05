<#
.SYNOPSIS
    “Microsoft Defender SmartScreen for Explorer must be enabled”

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 2026-04-04
    Last Modified   : 2026-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000210

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000210).ps1 
#>

# Create required registry path
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Force | Out-Null

# Enable SmartScreen
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" `
  -Name "EnableSmartScreen" `
  -Value 1 `
  -PropertyType DWord `
  -Force

# Set to "Warn and prevent bypass" (Block)
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" `
  -Name "ShellSmartScreenLevel" `
  -Value "Block" `
  -PropertyType String `
  -Force
