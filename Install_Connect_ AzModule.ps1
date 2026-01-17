# Install Az Module
# Source: https://learn.microsoft.com/en-us/powershell/azure/install-azps-windows?view=azps-15.1.0&tabs=powershell&pivots=windows-psgallery

# Set Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Get Az Module
Get-Module -Name Az -ListAvailable

# Get Installed Az Module
Get-InstalledModule -Name Az -AllVersions

Install-Module -Name Az -Repository PSGallery -Force

Update-Module -Name Az -Force

Connect-AzAccount

Disconnect-AzAccount