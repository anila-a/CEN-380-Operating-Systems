@ECHO OFF
IF %1 == PDF (
ECHO THE PDF FILES IN THE CURRENT FOLDER ARE:
DIR /b *.pdf
ECHO.)
GOTO FINISH
IF %1 == RAR (
ECHO THE RAR FILES IN THE CURRENT FOLDER ARE:
DIR /b *.rar
ECHO.)
GOTO FINISH
IF %1 == WORD (
ECHO THE MS.WORD FILES IN THE CURRENT FOLDER ARE:
DIR /b *.docx
ECHO.)
GOTO FINISH
ECHO UNKNOWN COMMAND, THIS WORKS WITH PDF, RAR, AND WORD PARAMETERS ONLY
:FINISH
PAUSE