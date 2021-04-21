:: Batch file to organize all files in the current directory into subdirectories based on file extensions
@ECHO OFF
:: For each file in the dir
FOR %%a in (".\*") DO (
:: Check if the file has an extension and if it is not in out script
IF "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
:: Check if the folder exists, if not create it
IF NOT EXIST "%%~xa" mkdir "%%~xa"
:: Move the file to the directory
MOVE "%%a" "%%~dpa%%~xa\"
))