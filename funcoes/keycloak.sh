#!/bin/bash

keycloak() {
    local op=$1
    local offset=${KEYCLOAK_OFFSET:-0}
    case $op in
        install)
            if [ "$2" = "examples" ]
            then
                if [ "$KEYCLOAK_EXAMPLES_URL" ]
                then
                    wget -c -O "$INSTALADORES_DIR"/"${KEYCLOAK_EXAMPLES_URL##*/}" $KEYCLOAK_EXAMPLES_URL
                    rm -rf "$PROJETOS_DIR"/${KEYCLOAK_EXAMPLES_DIR/}
                    unzip -d "$PROJETOS_DIR" "$INSTALADORES_DIR"/${KEYCLOAK_EXAMPLES_URL##*/}
                fi
            else
                instalar keycloak "$@"
            fi
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
