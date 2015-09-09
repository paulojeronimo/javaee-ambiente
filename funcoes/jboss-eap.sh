#!/bin/bash

jboss_eap_instalar() { instalar jboss_eap "$@"; }
jboss_eap_remover() { remover jboss_eap "$@"; }
_jboss_eap_service() {
    local op=$1
    case $PLATAFORMA in
        Linux)
            case `distro` in
                Fedora) 
                    if [ "$op" = "start" ]
                    then 
                        standalone.sh
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
                    standalone.sh
                    ;;
                stop) 
                    jboss-cli.sh -c :shutdown
                    ;;
            esac
            ;;
    esac
}
jboss_eap_start() { _jboss_eap_service start; }
jboss_eap_stop() { _jboss_eap_service stop; }
jboss_eap_status() { _jboss_eap_service status; }
jboss_eap_logs() { ls -lht "$JBOSS_EAP_LOG"/*.log; }
jboss_eap_rmlogs() { rm -f "$JBOSS_EAP_LOG"/*.log; }
jboss_eap_tail() { tail -F "$JBOSS_EAP_LOG"/server.log 2> /dev/null; }
jboss_eap_taillogs() { tail -f "$JBOSS_EAP_LOG"/*.log 2> /dev/null; }
jboss_eap_viewlogs() { view "$JBOSS_EAP_LOG"/*log; }
jboss_eap_deployments() { ls -lht "$JBOSS_EAP_DEPLOYMENTS"; }
jboss_eap_markfile() { touch "$JBOSS_EAP_DEPLOYMENTS"/$1; }
jboss_eap_unmarkfile() { rm "$JBOSS_EAP_DEPLOYMENTS"/$1; }

# vim: ts=4 sw=4 expandtab:
