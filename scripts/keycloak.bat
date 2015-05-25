@echo off

call ..\ambiente.bat

set JBOSS_HOME=%KEYCLOAK_HOME%

call %JBOSS_HOME%\bin\standalone.bat -bjboss.socket.binding.port-offset=%KEYCLOAK_OFFSET%
