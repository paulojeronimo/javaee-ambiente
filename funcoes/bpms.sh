#!/bin/bash

bpms() {
    local op=$1

    case $op in
        start)
            # inicia o BPMS em seu diretório HOME pois serão criados alguns diretórios nele (.index .niogit .scecurity repositories)
            cd "$BPMS_HOME"
            JBOSS_HOME=$BPMS_EAP_HOME "$BPMS_EAP_HOME"/bin/standalone.sh
            cd - &> /dev/null
            ;;
        stop)
            JBOSS_HOME=$BPMS_EAP_HOME "$BPMS_EAP_HOME"/bin/jboss-cli.sh -c :shutdown
            ;;
        home)
            cd "$BPMS_HOME"
            ;;
    esac
}

# vim: ts=4 sw=4 expandtab:
