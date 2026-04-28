if((Get-FileHash ./notes.txt -Algorithm SHA256).Hash -ne (Get-Content ./hash.txt))
{
  "This is important" | Set-Content ./notes.txt
  Write-Host "The file has changed. Corrective action initiated."
}
else
{
  Write-Host "The file is correct. No corrective action needed."
}
