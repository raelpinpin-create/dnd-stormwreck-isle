$desktop = [Environment]::GetFolderPath('Desktop')
$wsh = New-Object -ComObject WScript.Shell
$sc = $wsh.CreateShortcut("$desktop\DM Screen - Stormwreck Isle.lnk")
$sc.TargetPath = "D:\Dungeons and Dragons Campaigns\DRAGONS OF STORMWRECK ISLE\DM_SCREEN.html"
$sc.Save()

$urlPath = "$desktop\DM Screen - Stormwreck Isle.url"
$urlContent = "[InternetShortcut]`r`nURL=file:///D:/Dungeons%20and%20Dragons%20Campaigns/DRAGONS%20OF%20STORMWRECK%20ISLE/DM_SCREEN.html"
[System.IO.File]::WriteAllText($urlPath, $urlContent)
Write-Host "Desktop shortcuts created successfully at: $desktop"
