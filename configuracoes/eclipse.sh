#!/bin/bash

ECLIPSE_DIR=eclipse
ECLIPSE_LINK=$ECLIPSE_DIR
ECLIPSE_VER=${ECLIPSE_VER:-eclipse-jee-mars-1} # Algumas das possibilidades: eclipse-jee-mars-1, eclipse-jee-mars-R, eclipse-jee-luna-SR2
case $PLATAFORMA in
    Linux) ECLIPSE_INSTALADOR=$ECLIPSE_VER-linux-gtk-x86_64.tar.gz;;
    Darwin) ECLIPSE_INSTALADOR=$ECLIPSE_VER-macosx-cocoa-x86_64.tar.gz;;
    Cygwin) ECLIPSE_INSTALADOR=$ECLIPSE_VER-win32-x86_64.zip;;
esac
ECLIPSE_VERSION=`echo $ECLIPSE_VER | cut -f 3 -d-`
ECLIPSE_RELEASE=`echo $ECLIPSE_VER | cut -f 4 -d-`
ECLIPSE_INSTALADOR_URL=http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/$ECLIPSE_VERSION/$ECLIPSE_RELEASE
ECLIPSE_CONFIGURADO=eclipse.$PLATAFORMA.tar.gz
case $PLATAFORMA in
    Darwin)
        if [[ $ECLIPSE_VERSION = mars ]]
        then
            export ECLIPSE_HOME=$FERRAMENTAS_DIR/Eclipse.app
        else
            export ECLIPSE_HOME=$FERRAMENTAS_DIR/$ECLIPSE_DIR.$PLATAFORMA
        fi
    ;;
    *)
    export ECLIPSE_HOME=$FERRAMENTAS_DIR/$ECLIPSE_DIR.$PLATAFORMA
esac

# vim set ts=4, sw=4, expandtab:
