@echo off

call ..\ambiente.bat

set JBOSS_HOME=%BPMS_HOME%

call %JBOSS_HOME%\bin\standalone.bat
