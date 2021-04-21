@ECHO OFF
IF NOT EXIST *.rar (
ECHO This directory contains no rar files!
) ELSE (
	ECHO This directory contains the following rar files:
	ECHO.
	DIR /b *.rar
	)
PAUSE