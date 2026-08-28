# D&D DM Screen & Player Sheet Local Wi-Fi Sharing Server
Write-Host "===============================================================" -ForegroundColor Cyan
Write-Host "  🐉 D&D INTERACTIVE DM SCREEN & PLAYER SHEET SERVER 🐉" -ForegroundColor Yellow
Write-Host "===============================================================" -ForegroundColor Cyan

# Detect Local IPv4 Address
$localIP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { 
    $_.IPAddress -match '^(192\.168\.|10\.|172\.(1[6-9]|2[0-9]|3[0-1])\.)' -and 
    $_.InterfaceAlias -notmatch 'vEthernet|VirtualBox|VMware|Loopback'
} | Select-Object -First 1).IPAddress

if (-not $localIP) {
    $localIP = "localhost"
}

$port = 8080
$campaignDir = $PSScriptRoot

Write-Host "`n📡 SERVER IS READY! Connect your devices on the same Wi-Fi:`n" -ForegroundColor Green
Write-Host "📱 [DM Screen]   👉 http://$($localIP):$port/DM_SCREEN.html" -ForegroundColor Yellow
Write-Host "🧙 [Player Card] 👉 http://$($localIP):$port/EFELEIN_PLAYER_SHEET.html" -ForegroundColor Cyan
Write-Host "`n📁 Serving Folder: $campaignDir" -ForegroundColor DarkGray
Write-Host "===============================================================" -ForegroundColor Cyan
Write-Host "💡 Tip: Bookmark the links above on your Phone, Tablet, or iPad!" -ForegroundColor White
Write-Host "Press [Ctrl + C] in this window to stop the server.`n" -ForegroundColor DarkGray

# Launch Python HTTP Server
python -m http.server $port --directory "$campaignDir"
