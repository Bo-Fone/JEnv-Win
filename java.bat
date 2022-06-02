@echo off
for /f "tokens=* delims= " %%a in ('jenv getjava') do (set str=%%a)

:: Removing the first five invisible and special characters from the result by calling 'jenv getjava'.
set jroot=%str:~5%

if exist "%jroot%\bin\java.exe" (
    "%jroot%\bin\java.exe" %*
) else (
    echo There was an error:
    echo %jroot%
)