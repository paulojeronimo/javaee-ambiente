#!/bin/bash

keycloak_demo() {
    local op=$1
    local offset=${KEYCLOAK_DEMO_PORT_OFFSET:-0}
    case $op in
        install)
            instalar keycloak_demo "$@"
            ;;
        start)
            JBOSS_HOME="$KEYCLOAK_DEMO_HOME" "$KEYCLOAK_DEMO_HOME"/bin/standalone.sh -Djboss.socket.binding.port-offset=$offset
            ;;
        stop)
            JBOSS_HOME="$KEYCLOAK_DEMO_HOME" "$KEYCLOAK_DEMO_HOME"/bin/jboss-cli.sh --connect controller=localhost:$((9990+$offset)) command=:shutdown
            ;;
        cli)
            JBOSS_HOME="$KEYCLOAK_DEMO_HOME" "$KEYCLOAK_DEMO_HOME"/bin/jboss-cli.sh "$@"
            ;;
        remove)
            remover keycloak_demo "$@"
            ;;
    esac
}

keycloak_demo_instalar() { keycloak_demo install; }
keycloak_demo_remover() { keycloak_demo remove; }
keycloak_demo_start() { keycloak_demo start; }
keycloak_demo_stop() { keycloak_demo stop; }
keycloak_demo_cli() { keycloak_demo cli "$@"; }

# vim: ts=4 sw=4 expandtab:
