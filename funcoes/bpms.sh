#!/bin/bash

bpms_610_instalar() {
    instalar bpms "$@"
}

bpms() {
    local op=$1

    case $op in
        install)
            case "$BPMS_VER" in
                6.1) 
                    bpms_610_instalar
                    ;;
            esac
            ;;
        start)
            # inicia o BPMS em seu diretório HOME pois serão criados alguns diretórios nele (.index .niogit .scecurity repositories)
            if [ "$PLATAFORMA" = "Cygwin" ]
            then
                scripts
                bpms.bat
                cd - &> /dev/null
            else
                cd "$BPMS_HOME"
                JBOSS_HOME=$BPMS_EAP_HOME "$BPMS_EAP_HOME"/bin/standalone.sh
                cd - &> /dev/null
            fi
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
