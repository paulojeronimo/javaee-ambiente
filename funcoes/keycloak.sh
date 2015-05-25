keycloak() {
    local offset=100
    local op=$1

    case $op in
        start)
            JBOSS_HOME=$KEYCLOAK_HOME $KEYCLOAK_HOME/bin/standalone.sh -Djboss.socket.binding.port-offset=$offset
            ;;
        stop)
            JBOSS_HOME=$KEYCLOAK_HOME $KEYCLOAK_HOME/bin/jboss-cli.sh --connect controller=localhost:$((9990+$offset)) command=:shutdown
            ;;
    esac
}

# vim: ts=4 sw=4 expandtab:
