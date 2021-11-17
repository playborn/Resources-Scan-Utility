@echo off
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 >NUL


:main "InputFile" "outPutFile"
set "inputFile=%~1"
set "inputFolder=%~dp1"
set "outPutFile=%~2"
set "outPutFolder=%~dp2"
set /a greenLevel=51
set /a cyanLevel=45
set /a blueLevel=33
set /a errFileNotFound=1
set /a errUser=2
set /a errOutPutFolderNotFound=3
set /a errNoImageEngine=4


if defined imageEngine (
	if not exist "!imageEngine!" exit /b !errNoImageEngine!
) else (
	exit /b !errNoImageEngine!
)


if not exist "!inputFile!" exit /b %errFileNotFound%
if not exist "!outPutFolder!" exit /b %errOutPutFolderNotFound%
if exist "!outPutFile!" (
	if "!serverMode!"=="false" (
		choice /c YN /M "Soll die Datei "!outPutFile!" überschrieben werden^?"
		if !errorlevel! NEQ 1 exit /b !errUser!
	)
)
echo !date! !time! -- Cleaning "!inputFile!"
"!imageEngine!" "!inputFile!" -alpha set -channel RGBA -fill transparent -fuzz !greenLevel!%% -opaque green -fill transparent -fuzz !cyanLevel!%% -opaque cyan -fill transparent -fuzz !blueLevel!%% -opaque blue -channel A -evaluate Multiply 0.70 +channel "!outPutFile!"
endlocal
exit /b 0