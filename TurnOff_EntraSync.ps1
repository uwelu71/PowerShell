# Install-Module Microsoft.Graph -Force
Connect-MgGraph -Scopes "Organization.ReadWrite.All"
$OrgID = (Get-MgOrganization).Id

$params = @{
    onPremisesSyncEnabled = $false
}

Update-MgOrganization -OrganizationId $OrgID -BodyParameter $params

#Validation
Get-MgOrganization | Format-List


# Notes:
# It may take up to 72 hours to complete deactivation once you have disabled on-premises directory synchronization through this cmdlet.
# The time depends on the number of objects that are in your cloud service subscription account. You cannot cancel the disable action.
# It needs to be completed before you can take any other action, including re-enabling on-premises directory synchronization. 
# If you choose to re-enable on-premises directory synchronization, a full synchronization of your synced objects will happen.
# This may take a considerable time, depending on the number of objects in your Active Directory.

# Source: https://www.alitajran.com/uninstall-microsoft-entra-connect/#h-locate-microsoft-entra-connect-server




# Validation
Get-MgOrganization | Select-Object DisplayName, OnPremisesSyncEnable

# Notes
# Now you can uninstall Entra Connect from the server. Start > Control Panel > Programs and Features
# Source: https://learn.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-install-uninstall