<#
.SYNOPSIS
  IIS must not be installed
  Internet Information Services (IIS) and related web server components were removed or disabled to reduce the system’s attack surface and prevent unauthorized hosting of web services.

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
