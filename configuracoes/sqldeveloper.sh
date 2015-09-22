#!/bin/bash

SQLDEVELOPER_DIR=sqldeveloper
SQLDEVELOPER_LINK=sqldeveloper
SQLDEVELOPER_INSTALADOR=sqldeveloper-4.1.1.19.59-no-jre.zip
SQLDEVELOPER_INSTALA_OPCS='--nao-baixa-arquivo'

case $PLATAFORMA in
    Cygwin) 
        export SQLDEVELOPER_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$SQLDEVELOPER_DIR`
        export PATH=$FERRAMENTAS_DIR/$SQLDEVELOPER_DIR:$PATH
    ;;
    *) 
        export SQLDEVELOPER_HOME=$FERRAMENTAS_DIR/$SQLDEVELOPER_DIR
        export PATH=$SQLDEVELOPER_HOME:$PATH
    ;;
esac

# vim set ts=4, sw=4, expandtab:
