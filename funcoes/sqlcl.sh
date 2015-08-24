#!/bin/bash

sqlcl() {
    local op=$1
    case $op in
        install)
            instalar sqlcl "$@"
            ;;
        remove)
            remover sqlcl "$@"
            ;;
        *)
            case $PLATAFORMA in
                Cygwin) $SQLCL_HOME/bin/sql.bat "$@";;
                *) $SQLCL_HOME/bin/sql "$@";;
            esac
            ;;
    esac
}

sqlcl_instalar() { sqlcl install; }
sqlcl_remover() { sqlcl remove; }

# vim: ts=4 sw=4 expandtab:
