@echo off
echo Installing additional maps. This might take a while ...

set VERSION=0.9.15

set carlaDir=C:\CARLA_%VERSION%
set mapFile=%carlaDir%\AdditionalMaps_%VERSION%.zip
set targetDir=%carlaDir%\WindowsNoEditor

if exist "%mapFile%" (
    echo Map directory exists: %mapFile%
) else (
    echo 'AdditionalMaps_%VERSION%.zip' could not be found.
)

if exist "%targetDir%" (
    echo Target directory exists: %targetDir%
) else (
    echo Target directory does not exist: %targetDir%
)

echo .
echo .

@REM Extract additional maps with overwrite (flag '-Force')
@REM To silence all errors use the '-ErrorAction SilentlyContinue' flag
powershell -Command "Expand-Archive -Path '%mapFile%' -DestinationPath '%targetDir%' -Force"

echo Installation complete.

pause