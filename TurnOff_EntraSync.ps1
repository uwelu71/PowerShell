# Install-Module Microsoft.Graph -Force
Connect-MgGraph -Scopes "Organization.ReadWrite.All"
$OrgID = (Get-MgOrganization).Id

$params = @{
    onPremisesSyncEnabled = $false
}

Update-MgOrganization -OrganizationId $OrgID -BodyParameter $params
Get-MgOrganization | Format-List