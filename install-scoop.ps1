$PowerShellVersion = (Get-Host).Version

function Install
{
  Set-ExecutionPolicy RemoteSigned -scope CurrentUser

  iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

If ($PowerShellVersion.Major -gt 3) {
  Install
} Else {
  Read-Host "You have an older version of PowerShell. Scoop requires at least PowerShell 3."
}

Read-Host "Press Enter to exit"
