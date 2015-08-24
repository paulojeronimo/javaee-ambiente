#!/bin/bash

GRADLE_LINK=gradle

case $PLATAFORMA in
    Cygwin) 
        [ "$GRADLE_HOME" ] && export GRADLE_HOME=`cygpath -m "$GRADLE_HOME"`
        ;;
    *) 
        export GRADLE_HOME=$FERRAMENTAS_DIR/$GRADLE_LINK
        export PATH=$GRADLE_HOME/bin:$PATH
        ;;
esac

GRADLE_VER=${GRADLE_VER:-2.6}
GRADLE_DIR=gradle-$GRADLE_VER
GRADLE_INSTALADOR=$GRADLE_DIR-all.zip
GRADLE_INSTALADOR_URL_COMPLETA=https://services.gradle.org/distributions/$GRADLE_INSTALADOR

# vim set ts=4, sw=4, expandtab:
