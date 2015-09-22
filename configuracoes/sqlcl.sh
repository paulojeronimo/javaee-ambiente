#!/bin/bash

SQLCL_DIR=sqlcl
SQLCL_LINK=sqlcl
SQLCL_INSTALADOR=sqlcl-4.2.0.15.177.0246-no-jre.zip
SQLCL_INSTALA_OPCS='--nao-baixa-arquivo'

case $PLATAFORMA in
    Cygwin) 
        export SQLCL_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$SQLCL_DIR`
        export PATH=$FERRAMENTAS_DIR/$SQLCL_DIR/bin:$PATH
        ;;
    *) 
        export SQLCL_HOME=$FERRAMENTAS_DIR/$SQLCL_DIR
        export PATH=$SQLCL_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
