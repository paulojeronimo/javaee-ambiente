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
    esac
}

# vim: ts=4 sw=4 expandtab:
