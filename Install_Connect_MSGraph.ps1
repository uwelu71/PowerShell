# Source: https://learn.microsoft.com/en-us/powershell/microsoftgraph/installation?view=graph-powershell-1.0

# Set Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

#  Install Microsoft Graph Module
Install-Module Microsoft.Graph -Scope CurrentUser -Repository PSGallery -Force

# Install for All Users
Install-Module Microsoft.Graph -Scope AllUsers -Repository PSGallery -Force


# Install Beta Module
Install-Module Microsoft.Graph.Beta -Repository PSGallery -Force

# Verify
Get-InstalledModule Microsoft.Graph -ListAvailable
Get-InstalledModule

# Update Microsoft Graph Module
Update-Module Microsoft.Graph

# Uninstall Microsoft Graph Module
Uninstall-Module Microsoft.Graph -AllVersions

# Then, remove all of the dependency modules by running the following commands.
Get-InstalledModule Microsoft.Graph.* | ? Name -ne "Microsoft.Graph.Authentication" | Uninstall-Module -AllVersions
Uninstall-Module Microsoft.Graph.Authentication -AllVersions

# The Find-MgGraphCommand cmdlet can be used to discover the required permissions for another cmdlet.
# For example, to see all permissions that can be used to call Get-MgUser, run:
Find-MgGraphCommand -command Get-MgUser | Select -First 1 -ExpandProperty Permissions

Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"

Get-MgUser
Get-MgUserByUserPrincipalName
Get-MgUserCount

#Disconnect
Disconnect-MgGraph

# Reverence
# .user https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.users/?view=graph-powershell-1.0
