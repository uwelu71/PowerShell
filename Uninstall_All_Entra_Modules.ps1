$InstalledSubModules = Get-InstalledModule -Name Microsoft.Entra.* |
Where-Object { $_.Name -notmatch "Beta" }
foreach ($module in $InstalledSubModules) {
    Write-Host "Checking for submodule: $($module.Name)" -ForegroundColor Yellow -BackgroundColor DarkBlue
    Uninstall-Module -Name $module.Name -Force -ErrorAction Stop
    Write-Host "Successfully uninstalled submodule: $($module.Name)" -ForegroundColor Green
}