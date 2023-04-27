Get-Process Notepad | Stop-Process 

New-Item -ItemType File -Path $home\usernames.txt -Force

Add-Content -Path $home\usernames.txt -Value 'Hans','Patrick', 'Patrick', 'Herbert', 'Kevin', 'Herbert'

Get-Content $home\usernames.txt

(Get-Content $home\usernames.txt)[0..3]


### Inhalt abrufen, einzigartige Namen aufrufen und in einer neue Datei speichern

Get-Content -Path $home\usernames.txt |
Sort-Object | # ist notwendig, weil Get-Unige nur zusammnehängende Daten erkennt
Get-Unique |
Add-Content -Path $home\usernames_unique.txt

Get-Content $home\usernames_unique.txt


###Objekte (Namen) zählen
Get-Content -Path $home\\usernames_unique.txt | Measure-Object
(Get-Content $home\usernames_unique.txt).Count

### Vergleichen
Compare-Object -ReferenceObject (Get-Content $home\usernames.txt) -DifferenceObject (Get-Content $home\usernames_unique.txt)
Compare-Object -ReferenceObject (Get-Content $home\usernames.txt) -DifferenceObject (Get-Content $home\usernames_unique.txt) -PassThru