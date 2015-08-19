#!/bin/bash

ECLIPSE_DIR=eclipse
ECLIPSE_LINK=$ECLIPSE_DIR
ECLIPSE_VER=${ECLIPSE_VER:-eclipse-jee-mars-R} # Possibilidades: eclipse-jee-mars-R, eclipse-jee-luna-SR2
case $PLATAFORMA in
    Linux) ECLIPSE_INSTALADOR=$ECLIPSE_VER-linux-gtk-x86_64.tar.gz;;
    Darwin) ECLIPSE_INSTALADOR=$ECLIPSE_VER-macosx-cocoa-x86_64.tar.gz;;
    Cygwin) ECLIPSE_INSTALADOR=$ECLIPSE_VER-win32-x86_64.zip;;
esac
ECLIPSE_VERSION=`echo $ECLIPSE_VER | cut -f 3 -d-`
ECLIPSE_RELEASE=`echo $ECLIPSE_VER | cut -f 4 -d-`
ECLIPSE_INSTALADOR_URL=http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/$ECLIPSE_VERSION/$ECLIPSE_RELEASE
ECLIPSE_CONFIGURADO=eclipse.$PLATAFORMA.tar.gz

export ECLIPSE_HOME=$FERRAMENTAS_DIR/$ECLIPSE_DIR.$PLATAFORMA
if ! [ "$PLATAFORMA" = "Cygwin" ]
then
    export PATH=$ECLIPSE_HOME:$PATH
fi

eclipse() {
    local eclipse_bin=eclipse
    [ "$PLATAFORMA" = "Cygwin" ] && eclipse_bin="eclipse.exe"
    "$ECLIPSE_HOME"/$eclipse_bin &> /dev/null &
}

# vim set ts=4, sw=4, expandtab:
