Set-ExecutionPolicy RemoteSigned -scope CurrentUser

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

Read-Host "Press Enter to exit"