DOMAINNAME=$(az ad signed-in-user show --query 'userPrincipalName' | cut -d '@' -f 2 | sed 's/\"//')
az ad user create --display-name "Dylan Williams" --password "Pa55w.rd1234" --user-principal-name Dylan@$DOMAINNAME
az ad user list --output table --display-name Dylan-29771703
az ad group create --display-name "Service Desk29771703" --mail-nickname "ServiceDesk"
az ad group list -o table
USER=$(az ad user list --filter "UserPrincipalName eq 'Dylan-29771703@LODSPRODMSLEARNMCA.onmicrosoft.com'")
OBJECTID=$(echo $USER | jq '.[].id' | tr -d '"')
az ad group member add --group "Service Desk29771703" --member-id $OBJECTID
az ad group member list --group "Service Desk29771703"