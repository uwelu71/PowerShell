

$PSVersionTable

# Installation Sharepoint Online PoewerShell Module

# If your operating system is using Windows PowerShell 5, you can also install the SharePoint Online Management Shell
# by running the following command in administrative mode:
Install-Module -Name Microsoft.Online.SharePoint.PowerShell

# If you don't have administrative privileges on the system, you can install the SharePoint Online Management Shell
Install-Module -Name Microsoft.Online.SharePoint.PowerShell -Scope CurrentUser




# ACHTUNG!!! Funktioniert nur mit Windows PowerShell, nicht mit PowerShell Core (7.x)
# Compatibility Mode
Import-Module Microsoft.Online.SharePoint.PowerShell -UseWindowsPowerShell


# In Windows PowerShell
Import-Module Microsoft.Online.SharePoint.PowerShell -Force


Get-Module Microsoft.Online.SharePoint.PowerShell
Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable | Select-Object Name,Version
Get-InstalledModule Microsoft.Online.SharePoint.PowerShell -AllVersions

#Update SharePoint Online PowerShell Module
Update-Module -Name Microsoft.Online.SharePoint.PowerShell -Scope CurrentUser

# Uninstall SharePoint Online PowerShell Module
Uninstall-Module Microsoft.Online.SharePoint.PowerShell -RequiredVersion 16.0.24520.12000



# Connect to SharePoint Online Service

Connect-SPOService -Url https://contoso-admin.sharepoint.com -Credential admin@contoso.com

# Alternativ with ModernAuth
Connect-SPOService -Credential $creds -Url https://tenant-admin.sharepoint.com -ModernAuth $true -AuthenticationUrl https://login.microsoftonline.com/organizations

# with MF
Connect-SPOService -Url https://m365ds223991-admin.sharepoint.com -Credential $creds -AuthenticationMethod MFA




# Commando Reference
https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/?view=sharepoint-ps

Get-SPOHubSite -IncludeAssociatedSites
Get-SPOSite
Get-SPOTenant
Get-SPOUser   # Site https://m365ds223991.sharepoint.com/sites/Mark8ProjectTeam






