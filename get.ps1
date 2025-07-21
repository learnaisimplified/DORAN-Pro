# Define download location
$exeUrl = "https://github.com/learnaisimplified/DORAN-Pro/releases/download/v1.2.3/DORAN.exe"
$tempExe = "$env:TEMP\DORAN.exe"

# Kill any running DORAN.exe (ignore errors)
Get-Process DORAN -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue

# Wait a bit for file to be released
Start-Sleep -Milliseconds 500

# Download and run
Invoke-WebRequest -Uri $exeUrl -OutFile $tempExe -UseBasicParsing
Start-Process -FilePath $tempExe -WindowStyle Hidden
