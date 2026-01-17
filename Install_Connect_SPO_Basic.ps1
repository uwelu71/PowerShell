# Installation Sharepoint Online PoewerShell Module
# ACHTUNG!!! Funktioniert nur mit Windows PowerShell, nicht mit PowerShell Core (7.x)

Get-Module Microsoft.Online.SharePoint.PowerShell

Get-Module -ListAvailable -Name Microsoft.Online.SharePoint.PowerShell | ForEach-Object {
    Uninstall-Module -Name $_.Name -AllVersions -Force
}

Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable | Select-Object Name,Version

Install-Module -Name Microsoft.Online.SharePoint.PowerShell -Force

# If you don't have administrative privileges on the system, you can install the SharePoint Online Management Shell 
# only for the current user by running the following command:
Install-Module -Name Microsoft.Online.SharePoint.PowerShell -Scope CurrentUser


Update-Module

Import-Module Microsoft.Online.SharePoint.PowerShell -Force

Connect-SPOService -Url https://contoso-admin.sharepoint.com -Credential admin@contoso.com

# Alternativ with ModernAuth
Connect-SPOService -Credential $creds -Url https://tenant-admin.sharepoint.com -ModernAuth $true -AuthenticationUrl https://login.microsoftonline.com/organizations

# with MF
Connect-SPOService -Url https://m365ds223991.onmicrosoft.com

# Commando Referenc
https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/?view=sharepoint-ps

Get-SPOHubSite -IncludeAssociatedSites
Get-SPOSite
Get-SPOTenant
Get-SPOUser   # Site https://m365ds223991.sharepoint.com/sites/Mark8ProjectTeam






