$desktop = [Environment]::GetFolderPath('Desktop')
$wsh = New-Object -ComObject WScript.Shell
$sc = $wsh.CreateShortcut("$desktop\Eflein Character Card.lnk")
$sc.TargetPath = "D:\Dungeons and Dragons Campaigns\DRAGONS OF STORMWRECK ISLE\EFELEIN_PLAYER_SHEET.html"
$sc.Save()

Write-Host "Player shortcut created at: $desktop\Eflein Character Card.lnk"
