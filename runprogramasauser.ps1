###You want to launch PowerShell or any app as a user other than logged in user. Storing the username and password as envrionment variables here. Replace file path with the .exe you need###

$Password = ConvertTo-SecureString $Env:otheruserpassword -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential($Env:otherusername,$Password)
Start-Process -FilePath "C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe" -Credential $Credential

###How to store the credentials as env variables? Use below (also PowerShell) for user scope, toggle the third parameter for system scope###

[Environment]::SetEnvironmentVariable("otherusername","XYZ", "User")
[Environment]::SetEnvironmentVariable("otheruserpassword","XYZ", "User")
