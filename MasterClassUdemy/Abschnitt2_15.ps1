
$passwordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$passwordProfile.Password = "Pa55w.rd1234"

Connect-AzureAD

$domainName = ((Get-AzureAdTenantDetail).VerifiedDomains)[0].Name

New-AzureADUser -DisplayName 'Isabel Garcia' -PasswordProfile $passwordProfile -UserPrincipalName "Isabel@$domainName" -AccountEnabled $true -MailNickName 'Isabel'

Get-AzureADUser -All $true | Where-Object {$_.UserPrincipalName -like "*29771703@LOD*"} 


New-AzureADGroup -DisplayName 'Junior Admins29771703' -MailEnabled $false -SecurityEnabled $true -MailNickName JuniorAdmins
Get-AzureADGroup
$user = Get-AzureADUser -Filter "UserPrincipalName eq 'Isabel-29771703@LODSPRODMSLEARNMCA.onmicrosoft.com'"
Add-AzADGroupMember -MemberUserPrincipalName $user.userPrincipalName -TargetGroupDisplayName "Junior Admins29771703" 
Get-AzADGroupMember -GroupDisplayName "Junior Admins29771703"

New-AzResourceGroup -Name AZ500LAB02 -Location 'East US'
Get-AzResourceGroup | format-table
Remove-AzResourceGroup -Name "AZ500LAB01" -Force -AsJob

