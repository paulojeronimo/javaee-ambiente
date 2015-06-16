#!/bin/bash

# .JBoss - Funções
# funções de instalação e remoção:
jboss_instalar() { instalar jboss "$@"; }
jboss_remover() { remover jboss "$@"; }

# funções de inicialização/parada/status: 
_jboss_service() {
    local op=$1
    case $PLATAFORMA in
        Linux)
            case `distro` in
                Fedora) 
                    if [ "$JBOSS_TYPE" = "wildfly" ]
                    then
                        sudo systemctl $op jboss
                    else
                        if [ "$op" = "start" ]
                        then 
                            standalone.sh -b 0.0.0.0 &
                        else
                            jboss-cli.sh -c :shutdown
                        fi
                    fi
                    ;;
                CentOS|Ubuntu) 
                    if [ "$JBOSS_TYPE" = "wildfly" ]
                    then
                        sudo service jboss $op
                    else
                        jboss-cli.sh -c :shutdown
                    fi
                    ;;
            esac
            ;;
        Cygwin|Darwin)
            case $op in
                start) standalone.sh -b 0.0.0.0 &;;
                stop) jboss-cli.sh -c :shutdown;;
            esac
            ;;
    esac
}
jboss_start() { _jboss_service start; }
jboss_stop() { _jboss_service stop; }
jboss_status() { _jboss_service status; }

# funções de manipulação de logs:
jboss_logs() { ls -lht "$JBOSS_LOG"/*.log; }
jboss_rmlogs() { rm -f "$JBOSS_LOG"/*.log; }
jboss_tail() { tail -F "$JBOSS_LOG"/server.log 2> /dev/null; }
jboss_taillogs() { tail -f "$JBOSS_LOG"/*.log 2> /dev/null; }
jboss_viewlogs() { view "$JBOSS_LOG"/*log; }

# funções para visualizar e manipular arquivos de marcas no JBoss:
# Refs: 
# - https://docs.jboss.org/author/display/AS7/Application+deployment
# - https://access.redhat.com/documentation/en-US/JBoss_Enterprise_Application_Platform/6/html/Administration_and_Configuration_Guide/Reference_for_Deployment_Scanner_Marker_Files1.html
jboss_deployments() { ls -lht "$JBOSS_DEPLOYMENTS"; }
jboss_markfile() { touch "$JBOSS_DEPLOYMENTS"/$1; }
jboss_unmarkfile() { rm "$JBOSS_DEPLOYMENTS"/$1; }
# .JBoss - Funções.fim

# vim: ts=4 sw=4 expandtab:
