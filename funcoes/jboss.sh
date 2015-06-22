#!/bin/bash

jboss_instalar() { instalar jboss "$@"; }
jboss_remover() { remover jboss "$@"; }
_jboss_service() {
    local op=$1
    case $PLATAFORMA in
        Linux)
            case `distro` in
                Fedora) 
                    if [ "$op" = "start" ]
                    then 
                        standalone.sh -b 0.0.0.0
                    else
                        jboss-cli.sh -c :shutdown
                    fi
                    ;;
                CentOS|Ubuntu) 
                    jboss-cli.sh -c :shutdown
                    ;;
            esac
            ;;
        Cygwin|Darwin)
            case $op in
                start) 
                    standalone.sh -b 0.0.0.0
                    ;;
                stop) 
                    jboss-cli.sh -c :shutdown
                    ;;
            esac
            ;;
    esac
}
jboss_start() { _jboss_service start; }
jboss_stop() { _jboss_service stop; }
jboss_status() { _jboss_service status; }
jboss_logs() { ls -lht "$JBOSS_LOG"/*.log; }
jboss_rmlogs() { rm -f "$JBOSS_LOG"/*.log; }
jboss_tail() { tail -F "$JBOSS_LOG"/server.log 2> /dev/null; }
jboss_taillogs() { tail -f "$JBOSS_LOG"/*.log 2> /dev/null; }
jboss_viewlogs() { view "$JBOSS_LOG"/*log; }
jboss_deployments() { ls -lht "$JBOSS_DEPLOYMENTS"; }
jboss_markfile() { touch "$JBOSS_DEPLOYMENTS"/$1; }
jboss_unmarkfile() { rm "$JBOSS_DEPLOYMENTS"/$1; }

# vim: ts=4 sw=4 expandtab:
