@echo off

rem O Windows tem problemas com nomes longos. Então, evite um caminho como este:
rem set AMBIENTE_HOME=%USERPROFILE%\javaee-ambiente
rem Use algo como "C:\desenv" (de (desenv)olvimento):
set AMBIENTE_HOME=C:\desenv

rem Diretório em que as ferramentas são instaladas:
set FERRAMENTAS_HOME=%AMBIENTE_HOME%\ferramentas

rem JBOSS EAP
rem set JBOSS_HOME=%FERRAMENTAS_HOME%\jboss-eap-6.4
rem set PATH=%JBOSS_HOME%\bin;%PATH%

rem JBoss BPM Suite
rem set BPMS_HOME=%FERRAMENTAS_HOME%\jboss-bpms-6.0.3.GA-AD
rem set BPMS_EAP_HOME=%FERRAMENTAS_HOME%\jboss-eap-6.1
rem set BPMS_HOME=%FERRAMENTAS_HOME%\jboss-bpms-6.1.0.GA
rem set BPMS_EAP_HOME=%FERRAMENTAS_HOME%\jboss-eap-6.4

rem Keycloak
set KEYCLOAK_VER=1.3.1.Final
set KEYCLOAK_HOME=%FERRAMENTAS_HOME%\keycloak-%KEYCLOAK_VER%
rem Para executar o Keycloak num offeset diferente, ajuste isto:
rem set KEYCLOAK_OFFSET=0

rem Eclipse
set ECLIPSE_HOME=%FERRAMENTAS_HOME%\eclipse.Cygwin
set PATH=%ECLIPSE_HOME%;%PATH%

rem Forge
set FORGE_VER=2.16.2.Final
set FORGE_HOME=%FERRAMENTAS_HOME%\forge-distribution-%FORGE_VER%
set PATH=%FORGE_HOME%\bin;%PATH%

rem Gradle
set GRADLE_VER=2.4
set GRADLE_HOME=%FERRAMENTAS_HOME%\gradle-%GRADLE_VER%
set PATH=%GRADLE_HOME%\bin;%PATH%

rem Maven
set MAVEN_VER=3.3.3
set M2_HOME=%FERRAMENTAS_HOME%\apache-maven-%MAVEN_VER%
set PATH=%M2_HOME%\bin;%PATH%

rem Ant
set ANT_VER=1.9.5
set ANT_HOME=%FERRAMENTAS_HOME%\apache-ant-%ANT_VER%
set PATH=%ANT_HOME%\bin;%PATH%

rem JDK
rem set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_75
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_45
set PATH=%JAVA_HOME%\bin;%PATH%

rem PATH p/ localização de binários instalados via gem (ex.: asciidoctor)
set PATH=%USERPROFILE%\bin;%PATH%

rem Caminho para o Cygwin e seus binários (será o primeiro no PATH)
set CYGWIN_HOME=C:\cygwin64
set PATH=%CYGWIN_HOME%\bin;%PATH%
