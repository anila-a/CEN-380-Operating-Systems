@ECHO OFF
REM the percentage is valid up to 9 parameters, use shift otherwise
ECHO First parameter is %1, second parameter is %2, third parameter is %3
SHIFT
ECHO After one shift, first parameter is %1, second parameter is %2, third parameter is %3
SHIFT
ECHO After two shifts, first parameter is %1, second parameter is %2, third parameter is %3