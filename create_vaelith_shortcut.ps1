$desktop = [Environment]::GetFolderPath('Desktop')
$wsh = New-Object -ComObject WScript.Shell
$sc = $wsh.CreateShortcut("$desktop\Vaelith Character Card.lnk")
$sc.TargetPath = "D:\Dungeons and Dragons Campaigns\DRAGONS OF STORMWRECK ISLE\VAELITH_PLAYER_SHEET.html"
$sc.Save()

Write-Host "Player shortcut created at: $desktop\Vaelith Character Card.lnk"
