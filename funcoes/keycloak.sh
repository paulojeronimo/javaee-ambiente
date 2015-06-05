keycloak() {
    local op=$1
    local offset=${KEYCLOAK_OFFSET:-0}

    case $op in
        install)
            instalar keycloak "$@"
            ;;
        start)
            JBOSS_HOME="$KEYCLOAK_HOME" "$KEYCLOAK_HOME"/bin/standalone.sh -Djboss.socket.binding.port-offset=$offset
            ;;
        stop)
            JBOSS_HOME="$KEYCLOAK_HOME" "$KEYCLOAK_HOME"/bin/jboss-cli.sh --connect controller=localhost:$((9990+$offset)) command=:shutdown
            ;;
        remove)
            remover keycloak "$@"
            ;;
    esac
}

# vim: ts=4 sw=4 expandtab:
