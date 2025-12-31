$SubscriptionId = "c5365ae4-76ab-4929-907e-49d8456be106"

Connect-AzAccount -Subscription $SubscriptionId
New-AzResourceGroup -Name rg-learnbicep  -Location eastus -tag @{environment="demo"; project="Mastering Bicep"}

New-AzResourceGroupDeployment -ResourceGroupName exampleRG -TemplateFile ./main.bicep