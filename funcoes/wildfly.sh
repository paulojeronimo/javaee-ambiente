#!/bin/bash

wildfly_instalar() { instalar wildfly "$@"; }
wildfly_remover() { remover wildfly "$@"; }
wildfly_cli() {
    JBOSS_HOME="$WILDFLY_HOME" "$WILDFLY_HOME"/bin/jboss-cli.sh "$@"
}
_wildfly_service() {
    local op=$1; shift
    case $PLATAFORMA in
        Linux)
            case `distro` in
                Fedora) 
                        sudo systemctl $op wildfly
                    ;;
                CentOS|Ubuntu) 
                        sudo service wildfly $op
                    ;;
            esac
            ;;
        Cygwin|Darwin)
            case $op in
                start) 
                    JBOSS_HOME="$WILDFLY_HOME" "$WILDFLY_HOME"/bin/standalone.sh "$@"
                    ;;
                stop) 
                    wildfly_cli -c :shutdown
                    ;;
            esac
            ;;
    esac
}
wildfly_start() { _wildfly_service start "$@"; }
wildfly_stop() { _wildfly_service stop; }
wildfly_status() { _wildfly_service status; }
wildfly_logs() { ls -lht "$WILDFLY_LOG"/*.log; }
wildfly_rmlogs() { rm -f "$WILDFLY_LOG"/*.log; }
wildfly_tail() { tail -F "$WILDFLY_LOG"/server.log 2> /dev/null; }
wildfly_taillogs() { tail -f "$WILDFLY_LOG"/*.log 2> /dev/null; }
wildfly_viewlogs() { view "$WILDFLY_LOG"/*log; }
wildfly_deployments() { ls -lht "$WILDFLY_DEPLOYMENTS"; }
wildfly_markfile() { touch "$WILDFLY_DEPLOYMENTS"/$1; }
wildfly_unmarkfile() { rm "$WILDFLY_DEPLOYMENTS"/$1; }

# vim: ts=4 sw=4 expandtab:
