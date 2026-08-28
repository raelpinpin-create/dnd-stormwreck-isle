$desktop = [Environment]::GetFolderPath('Desktop')
$wsh = New-Object -ComObject WScript.Shell
$sc = $wsh.CreateShortcut("$desktop\Father Flubs Character Card.lnk")
$sc.TargetPath = "D:\Dungeons and Dragons Campaigns\DRAGONS OF STORMWRECK ISLE\FATHER_FLUBS_PLAYER_SHEET.html"
$sc.Save()

Write-Host "Player shortcut created at: $desktop\Father Flubs Character Card.lnk"
