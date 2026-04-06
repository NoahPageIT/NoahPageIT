<#
.SYNOPSIS
  PowerShell 2.0 must be disabled
  Windows PowerShell 2.0 was disabled to prevent downgrade attacks that could bypass modern logging and security controls.
  This ensures that only newer, more secure PowerShell versions are available for use.

.NOTES
    Author          : Noah Page
    LinkedIn        : https://www.linkedin.com/in/noahrpage/
    GitHub          : https://github.com/NoahPageIT
    Date Created    : 04/06/2026
    Last Modified   : 04/06/2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000100

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-00-000100).ps1 
#>

$iisFeatures = @(
    "IIS-WebServerRole",
    "IIS-WebServer",
    "IIS-HostableWebCore"
)

foreach ($feature in $iisFeatures) {
    Disable-WindowsOptionalFeature -Online -FeatureName $feature -NoRestart
}
