# Get access token

$tenantId = ''
$clientId = ''
$appSecret =''

$resourceAppIdUri = ''
$oAuthUri = ''
$authBody = ''
$authResponse = ''
$token = ''



# Get-Incident

$token = './Get-token.ps1'

$dateTime = (Get-Date).ToUniversalTime().AddHours(-48).ToString("o")

$url = "https://api.security.microsoft.com/api/incidents`?`$filter=lastUpdateTime+ge+$dateTime"

$header = 

$response = Invoke-WebRequest - Method Get -Uri $url -Headers $headers -ErrorAction Stop

$incidents = ($response | COnvertFrom-Json).value | ConvertTo-Json-Depth 99

$dateTimeForFileName = Get-DAte -Format o | foreach {$_ -replace ":", "."}

$outputJsonPath = "./Incidents.jason"

Out-File -FilePath $outputJsonPath -InputObject $incidents