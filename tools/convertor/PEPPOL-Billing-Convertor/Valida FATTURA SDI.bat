@echo off
cls
echo FatturaPA 1.2 validation
set "xml="
call _fc xml
IF %ERRORLEVEL% EQU 1 GOTO :done
echo.
echo Validating %xml%
echo ____________________________________________________________
echo - Phase 1: XSD schema validation

call _w3cschema profiles\national\it\SDI\fatturapa-1.2\fatturapa_v1.2.xsd "%xml%" >output\syntax_report.txt

explorer "file://%~d0%~p0output\syntax_report.txt"

