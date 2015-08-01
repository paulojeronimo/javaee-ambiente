#!/bin/bash

sqldeveloper() {
    case $1 in
        install)
            instalar sqldeveloper "$@"
            ;;
        remove)
            remover sqldeveloper "$@"
            ;;
        *)
            if [ -d "$FERRAMENTAS_DIR"/SQLDeveloper.app ]
            then
                open "$FERRAMENTAS_DIR"/SQLDeveloper.app
            else
                echo "sqldeveloper não instalado!"
            fi
            ;;
    esac
}
