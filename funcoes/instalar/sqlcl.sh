#!/bin/bash

instala_sqlcl() {
    instala_aplicacao

    echo "Adicionando permissão de execução para os arquivos \"$SQLCL_DIR/bin/sql*\" ..."
    chmod +x "$SQLCL_HOME"/bin/sql*
}

remove_sqlcl() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
