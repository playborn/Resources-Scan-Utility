@echo off
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 >NUL

:merger "SOurceFolder" "OutputFile"
set "SourceFolder=%~1"
set "outPutFile=%~2"
set "TMPfile=!outPutFile!.tmp"
set /a errNoImageEngine=4
set /a errFileNotFound=1

if defined imageEngine (
	if not exist "!imageEngine!" exit /b !errNoImageEngine!
) else (
	exit /b !errNoImageEngine!
)



set /a cnt=0
for %%i in ("%SourceFolder%*.png") do (
	set /a cnt+=1
	if !cnt! EQU 1 (
		echo !date! !time! -- Merging: "%%~i"
		copy "%%~i" "!TMPfile!" >NUL
	) else (
		echo !date! !time! -- Merging: "%%~i"
		"!imageEngine!" "!TMPfile!" "%%~i" -composite "!TMPfile!"
	)
)
if !cnt! EQU 0 exit /b !errFileNotFound!
if exist "!tmpFile!" move "!TMPfile!" "!outPutFile!" >NUL
echo !date! !time! -- Merging DONE: "!outPutFile!"
exit /b 0