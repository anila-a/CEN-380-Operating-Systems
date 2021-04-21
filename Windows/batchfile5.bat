@ECHO OFF
MD pdfs
REM For each file in the directory
FOR %%a in (".\*.pdf") DO (
MOVE "%%a" ".\pdfs\"
)