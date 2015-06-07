keycloak() {
    local op=$1
    local offset=${KEYCLOAK_OFFSET:-0}

    case $op in
        install)
            instalar keycloak "$@"
            ;;
        change)
            pushd "$FERRAMENTAS_HOME" &> /dev/null
            unlink $KEYCLOAK_LINK &> /dev/null
            ln -s "$KEYCLOAK_DIR" $KEYCLOAK_LINK
            popd &> /dev/null
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
