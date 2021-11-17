@echo off
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 >NUL

:setup
set "inputFolder=input\"
echo !date! !time! -- SERVER STARTED
echo !date! !time! -- WAITING FOR JOB "!inputFolder!1.png"
:main
if exist "!inputFolder!1.png" (
	echo !date! !time! -- JOB FOUND, starting...
	call main.bat "SERVER"
	FOR %%i in ("!inputFolder!*.png") do (
		echo !date! !time! -- Removing: "%%~i"
		del "%%~i"
	)
	echo !date! !time! -- WAITING FOR JOB "!inputFolder!1.png"
) else (
	timeout /t 5 >NUL
)

goto main



:cleanInput
