# Windows 10 quick bootstrap script
# Author: Romanenko R. A.
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

cinst -y vcredist140 dotnet3.5
cinst -y virtio-drivers
cinst -y 7zip
cinst -y steam deluge firefox freedownloadmanager

# KMS
# https://gist.github.com/vikassaini01/802ebf2b445154692d103cb04fd2bb9b
# https://gist.github.com/nazmul629/ca3f32aa802975d8f8b626dd826ce83e
slmgr/ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.chinancce.com
slmgr /ato
