### This st4p must be done once per tenant

## Reqired Azure Roles: Role Based Access Control Administrator
## Required Entra Permissions: MS Graph - Directory.Read.All


# Create Self-Signed Certificate for Service Principal
$cert = New-SelfSignedCertificate -CertStoreLocation "cert:\CurrentUser\My" -Subject "CN=SP_IG-AzurePALRegistration-Cert" -KeySpec KeyExchange
$keyValue = [System.Convert]::ToBase64String($cert.GetRawCertData())


## This step must be done for every cusotmer subscription

# Set Subscription Context
$susbscriptionId = 'edb290b7-e8cd-45ef-b256-503aa83fac71'

# Login with Subscription Owner
Connect-AzAccount -Subscription $susbscriptionId


# Create Service Pricipal
# 
$sp = New-AzADServicePrincipal -DisplayName SP_IG-AzurePALRegistration -CertValue $keyValue -EndDate $cert.NotAfter -StartDate $cert.NotBefore
Sleep 30



# Connect to the Azure Subscription wiht the service principal
$TenantID = (Get-AzSubscription -SubscriptionId $susbscriptionId).TenantId
$TenantId
$ApplicationId = (Get-AzADApplication -DisplayNameStartWith SP_IG-AzurePALRegistration).AppId
$ApplicationId
$Thumbprint = (Get-ChildItem cert:\CurrentUser\My\ | Where-Object {$_.Subject -eq "CN=SP_IG-AzurePALRegistration-Cert" }).Thumbprint



Connect-AzAccount -ServicePrincipal -CertificateThumbprint $Thumbprint -ApplicationId $ApplicationId -TenantId $TenantId


# Assign Azure RBAC Role "Reader" within Subscription to the service principal
# New-AzRoleAssignment -RoleDefinitionName Reader -ServicePrincipalName $sp.AppId
New-AzRoleAssignment -RoleDefinitionName Reader -ServicePrincipalName 'e520b977-f857-4010-b946-2267ed05040c'


# Assign the InfoGuard Partner ID
New-AzManagementPartner -PartnerId 6352901



Get-AzManagementPartner
# Update-AzManagementPartner -PartnerId 12345
# Remove-AzManagementPartner -PartnerId 12345


Set-AzContext -Subscription 'edb290b7-e8cd-45ef-b256-503aa83fac71'
Set-AzContext -Subscription '6017b4a9-b981-467f-8c93-c6a785a96b8f'
Set-AzContext -Subscription 'ec5527a8-5753-4c72-8a82-deee387a5eaf'
