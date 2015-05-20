@echo off

set AMBIENTE_HOME=%USERPROFILE%\javaee-ambiente

set FERRAMENTAS_HOME=%AMBIENTE_HOME%\ferramentas

rem #### Configuração do JBoss - Início ####
rem JBoss EAP 6.4
rem set JBOSS_HOME=%FERRAMENTAS_HOME%\jboss-eap-6.4

rem JBoss BPMS
rem set JBOSS_HOME=%FERRAMENTAS_HOME%\jboss-bpms-6.0.3.GA-AD\jboss-eap-6.1

rem Keycloak
set JBOSS_HOME=%FERRAMENTAS_HOME%\keycloak-1.2.0.Final

set PATH=%JBOSS_HOME%\bin;%PATH%
rem #### Configuração do JBoss - Fim ####

set ECLIPSE_HOME=%FERRAMENTAS_HOME%\eclipse.Cygwin
set PATH=%ECLIPSE_HOME%;%PATH%

set FORGE_HOME=%FERRAMENTAS_HOME%\forge-distribution-2.15.2.Final
set PATH=%FORGE_HOME%\bin;%PATH%

set GRADLE_HOME=%FERRAMENTAS_HOME%\gradle-2.3
set PATH=%GRADLE_HOME%\bin;%PATH%

set M2_HOME=%FERRAMENTAS_HOME%\apache-maven-3.2.5
set PATH=%M2_HOME%\bin;%PATH%

set ANT_HOME=%FERRAMENTAS_HOME%\apache-ant-1.9.4
set PATH=%ANT_HOME%\bin;%PATH%

set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_75
set PATH=%JAVA_HOME%\bin;%PATH%

rem PATH p/ localização de binários instalados via gem (ex.: asciidoctor)
set PATH=%USERPROFILE%\bin;%PATH%

set CYGWIN_HOME=C:\cygwin64
set PATH=%CYGWIN_HOME%\bin;%PATH%
