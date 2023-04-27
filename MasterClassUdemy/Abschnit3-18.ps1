Get-Process Notepad | Stop-Process 

New-Item -ItemType File -Path $home\usernames.txt -Force

Add-Content -Path $home\usernames.txt -Value 'Hans','Patrick', 'Patrick', 'Herbert', 'Kevin', 'Herbert'

Get-Content $home\usernames.txt

(Get-Content $home\usernames.txt)[0..3]