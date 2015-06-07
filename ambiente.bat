@echo off

rem AMERDA do Windows tem problemas com nomes longos. Então, é interessante evitar este caminho:
rem set AMBIENTE_HOME=%USERPROFILE%\javaee-ambiente

rem Uma solução que não teve o problema acima:
set AMBIENTE_HOME=C:\pj

rem Diretório em que as ferramentas são instaladas:
set FERRAMENTAS_HOME=%AMBIENTE_HOME%\ferramentas

rem JBOSS EAP
set JBOSS_TYPE=jboss_eap
set JBOSS_HOME=%FERRAMENTAS_HOME%\jboss-eap-6.4
set PATH=%JBOSS_HOME%\bin;%PATH%

rem JBoss BPM Suite (BPMS)
set BPMS_HOME=%FERRAMENTAS_HOME%\jboss-bpms-6.0.3.GA-AD\jboss-eap-6.1

rem Keycloak
set KEYCLOAK_HOME=%FERRAMENTAS_HOME%\keycloak-1.2.0.Final
set KEYCLOAK_OFFSET=0

set ECLIPSE_HOME=%FERRAMENTAS_HOME%\eclipse.Cygwin
set PATH=%ECLIPSE_HOME%;%PATH%

set FORGE_HOME=%FERRAMENTAS_HOME%\forge-distribution-2.15.2.Final
set PATH=%FORGE_HOME%\bin;%PATH%

set GRADLE_HOME=%FERRAMENTAS_HOME%\gradle-2.3
set PATH=%GRADLE_HOME%\bin;%PATH%

set M2_HOME=%FERRAMENTAS_HOME%\apache-maven-3.3.3
set PATH=%M2_HOME%\bin;%PATH%

set ANT_HOME=%FERRAMENTAS_HOME%\apache-ant-1.9.5
set PATH=%ANT_HOME%\bin;%PATH%

set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_75
set PATH=%JAVA_HOME%\bin;%PATH%

rem PATH p/ localização de binários instalados via gem (ex.: asciidoctor)
set PATH=%USERPROFILE%\bin;%PATH%

rem Caminho para o Cygwin e seus binários (será o primeiro no PATH)
set CYGWIN_HOME=C:\cygwin64
set PATH=%CYGWIN_HOME%\bin;%PATH%
