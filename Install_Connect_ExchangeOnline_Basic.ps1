# Install Exchange Online PowerShell Module
# https://learn.microsoft.com/en-us/powershell/exchange/exchange-online-powershell-v2?view=exchange-ps#install-and-maintain-the-exchange-online-powershell-module

Set-ExecutionPolicy RemoteSigned

# In an elevated PowerShell window (all users):
Install-Module -Name ExchangeOnlineManagement

# In a non-elevated PowerShell window (current user only):
Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser

# To see the available Preview versions of the module, run the following command:
Find-Module ExchangeOnlineManagement -AllVersions -AllowPrerelease


Get-InstalledModule ExchangeOnlineManagement | Format-List Name,Version,InstalledLocation

# In an elevated PowerShell window (all users):
Update-Module -Name ExchangeOnlineManagement

# In a non-elevated PowerShell window (current user only):
Update-Module -Name ExchangeOnlineManagement -Scope CurrentUser

#To see the available Preview versions of the module, run the following command:
Find-Module ExchangeOnlineManagement -AllVersions -AllowPrerelease
# In an elevated PowerShell window (all users):
Update-Module -Name ExchangeOnlineManagement -AllowPrerelease
# In a non-elevated PowerShell window (current user only):
Update-Module -Name ExchangeOnlineManagement -Scope CurrentUser -AllowPrerelease

# To upgrade to a specific Preview version of the module, replace <PreviewVersion> with the necessary value, and run one of the following commands:
# In an elevated PowerShell window (all users):

#Update-Module -Name ExchangeOnlineManagement -RequiredVersion <PreviewVersion> -AllowPrerelease
# In a non-elevated PowerShell window (current user only):

# To confirm that the update was successful, run the following commands to check the version information of the installed module:
Import-Module ExchangeOnlineManagement; Get-Module ExchangeOnlineManagement


# Before Connecting
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online
# Connect-ExchangeOnline [-UserPrincipalName <UPN>] [-ExchangeEnvironmentName <Value>] [-ShowBanner:$false] [-LoadCmdletHelp] [-DelegatedOrganization <String>] [-SkipLoadingFormatData] [-DisableWAM]
Connect-ExchangeOnline -UserPrincipalName admin@M365DS223991.onmicrosoft.com


# Command Reference

https://learn.microsoft.com/en-us/powershell/exchange/exchange-online-powershell-v2?view=exchange-ps
Get-EXOMailbox
Get-EXORecipient
Get-EXOUser
Get-EXOTransportRule
Get-EXOMailbox
