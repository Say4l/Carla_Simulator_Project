@echo off

@REM Get desktop path for the current user
set desktopPath=%USERPROFILE%\Desktop

@REM Create a shortcut for CARLA
if exist "%desktopPath%\CarlaUE4.lnk" (
    echo Shortcut 'CarlaUE4' already exists on the desktop!
) else (
    echo Creating shortcut for CARLA on the desktop...
    powershell -command ^
        "$WshShell = New-Object -ComObject WScript.Shell; " ^
        "$Shortcut = $WshShell.CreateShortcut('%desktopPath%\CarlaUE4.lnk'); " ^
        "$Shortcut.TargetPath = 'C:\CARLA_0.9.15\WindowsNoEditor\CarlaUE4.exe'; " ^
        "$Shortcut.Save()"
)

pause