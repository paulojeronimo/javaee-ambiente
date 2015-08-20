#!/bin/bash

instala_sqldeveloper() {
    instala_aplicacao

    #echo "Adicionando permissão de execução para os arquivos \"$SQLDEVELOPER_DIR/sqldeveloper.*\" ..."
    #chmod +x "$SQLDEVELOPER_HOME"/sqldeveloper.*
}

remove_sqldeveloper() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
