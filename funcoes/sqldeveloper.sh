#!/bin/bash

sqldeveloper() {
    local op=$1
    case $op in
        install)
            instalar sqldeveloper "$@"
            ;;
        remove)
            remover sqldeveloper "$@"
            ;;
        *)
            case $PLATAFORMA in
                Cygwin) $SQLDEVELOPER_HOME/sqldeveloper.exe "$@";;
                *) $SQLDEVELOPER_HOME/sqldeveloper.sh "$@";;
            esac
    esac
}

sqldeveloper_instalar() { sqldeveloper install; }
sqldeveloper_remover() { sqldeveloper remove; }

# vim: ts=4 sw=4 expandtab:
