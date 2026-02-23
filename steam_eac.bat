    @echo off
    title x0
    TIMEOUT 0 /NOBREAK >NUL
    cd /d "C:\Program Files (x86)\Steam\steamapps\common\Paladins\Binaries\Win64"
    echo Current directory: %CD%
    TIMEOUT 0 /NOBREAK >NUL
    echo Starting Paladins...
    start "Palainds" /B "paladins.exe" -homedir=deadgame -steam -EACALT -seekfreeloadingpcconsole -allow64 -LANGUAGE=EN -EACALT -allow64 -pid=402 -eac-nop-loaded 
    TIMEOUT 0 /NOBREAK >NUL
     
    if errorlevel 1 (
        echo Error: Failed to start Paladins.
        color 4
        pause
    ) else (
        echo Paladins started successfully.
        color 2
    )
     
    TIMEOUT 0 /NOBREAK >NUL
