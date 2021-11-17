@echo off
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 >NUL

:setup
:: GLOBAL VARS
if "%~1"=="SERVER" (set "serverMode=true") else (set "serverMode=false")
set "programVersion=v0.1"
set "imageEngine=modul\imageMagick\convert.exe"
set "inputFolder=input\"
set "outPutFolder=cleaned\"
set "mergedFolder=merged\"
set "programName=Resources-Scan-Utility"

title %programName% %programVersion%


:main
if "!serverMode!"=="false" (
	echo Bilder im Ordner "!inputFolder!" zusammenführen ^?
	choice /c YN
	if !errorlevel! EQU 2 exit /B -1
)
if not exist "!outPutFolder!" mkdir "!outPutFolder!"
for %%i in ("!inputFolder!*.png") do (
	call modul\cleaner.bat "%%~i" "!outPutFolder!%%~nxi"
)

set /a mergedId=0
:whileNameExist
set /a mergedId+=1
set "mergedFile=!mergedFolder!Merged-!mergedId!.png"
if exist "!mergedFile!" goto whileNameExist

call modul\merger.bat "!outPutFolder!" "!mergedFile!"

FOR %%i in ("!outPutFolder!*.png") do (
	echo !date! !time! -- Removing "%%~i"
	del "%%~i"
)
echo !date! !time! -- DONE
if "!serverMode!"=="false" pause & EXIT
exit /b 0
EXIT



:usage
echo HELP Screen
echo ---INPUT HELP HERE---
pause
exit /b -1