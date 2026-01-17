# https://learn.microsoft.com/en-us/powershell/entra-powershell/installation?view=entra-powershell&tabs=powershell%2Cv1&pivots=windows

$PSVersionTable.PSVersion
Get-ExecutionPolicy -List
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Check if Entra PowerShell Module is installed
Get-Module -Name Microsoft.Entra -ListAvailable

# Install Entra PowerShell Module
Install-Module -Name Microsoft.Entra -Scope CurrentUser
Install-Module -Name Microsoft.Entra -Repository PSGallery -Scope CurrentUser -Force -AllowClobber
# Update Entra PowerShell Module
Update-Module -Name Microsoft.Entra -Scope CurrentUser


Connect-Entra -Scope 'User.ReadWrite.All Group.ReadWrite.All Directory.ReadWrite.All'


# Get help for Entra PowerShell Module
Get-Help -Name Microsoft.Entra -Detailed
Get-Command -Module Microsoft.Entra
# Get list of available cmdlets in Entra PowerShell Module
Get-Command -Module Microsoft.Entra | Select-Object Name, Synopsis
# Get list of installed versions of Entra PowerShell Module
Get-InstalledModule -Name Microsoft.Entra -AllVersions
Get-Module -Name Microsoft.Entra -ListAvailable | Select-Object Name, Version
# Uninstall Entra PowerShell Module
Uninstall-Module -Name Microsoft.Entra -AllVersions
# Disconnect from Entra
Disconnect-Entra
Disconnect-Entra -Confirm:$false

# Commando Reference
https://learn.microsoft.com/en-us/powershell/module/microsoft.entra.users/?view=entra-powershell
Get-EntraUser

Import-Module Microsoft.Entra -Force

Find-Module -Name "Microsoft.Entra*" -Repository PSGallery |
Where-Object { $_.Name -notmatch "beta" }

# Verify Installed Modules
Get-InstalledModule -Name Microsoft.Entra* |
Where-Object { $_.Name -notmatch "Beta" } | Format-Table Name, Version, InstalledLocation -AutoSize


Get-InstalledModule -Name Microsoft.Entra.Users

Get-EntraEnvironment

#TroubleShooting
Get-InstalledModule Microsoft.Graph -AllVersions
Get-InstalledModule Microsoft.Entra -AllVersions

Uninstall-Module Microsoft.Graph.Authentication -RequiredVersion 2.15.0
Uninstall-Module Micrososoft.Entra -RequiredVersion 1.0.2
