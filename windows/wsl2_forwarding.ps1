$ports = @(22, 1145);

$wslAddress = (wsl hostname -I).Trim();

if ($wslAddress -match '^(\d{1,3}\.){3}\d{1,3}$') {
    Write-Host "WSL IP address: $wslAddress" -ForegroundColor Green
    Write-Host "Ports: $ports" -ForegroundColor Green
}
else {
    Write-Host "Error: Could not find WSL IP address." -ForegroundColor Red
    exit
}

$listenAddress = '0.0.0.0';

foreach ($port in $ports) {
    Write-Host "Forwarding port $port to $wslAddress" -ForegroundColor Green
    Invoke-Expression "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$listenAddress";
    Invoke-Expression "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$listenAddress connectport=$port connectaddress=$wslAddress";
}

$fireWallDisplayName = 'WslPortForwarding';
$portsStr = $ports -join ",";

Invoke-Expression "Remove-NetFireWallRule -DisplayName $fireWallDisplayName";
Invoke-Expression "New-NetFireWallRule -DisplayName $fireWallDisplayName -Direction Outbound -LocalPort $portsStr -Action Allow -Protocol TCP";
Invoke-Expression "New-NetFireWallRule -DisplayName $fireWallDisplayName -Direction Inbound -LocalPort $portsStr -Action Allow -Protocol TCP";