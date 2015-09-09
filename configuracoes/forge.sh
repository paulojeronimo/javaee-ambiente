#!/bin/bash

FORGE_LINK=forge

case $PLATAFORMA in
    Cygwin) 
        [ "$FORGE_HOME" ] && export FORGE_HOME=`cygpath -m "$FORGE_HOME"`
        ;;
    *) 
        export FORGE_HOME=$FERRAMENTAS_DIR/$FORGE_LINK
        export PATH=$FORGE_HOME/bin:$PATH
        ;;
esac

FORGE_VER=${FORGE_VER:-2.19.0.Final}
FORGE_DIR=forge-distribution-$FORGE_VER
FORGE_INSTALADOR=$FORGE_DIR-offline.zip
FORGE_INSTALADOR_URL_COMPLETA="https://repository.jboss.org/nexus/service/local/artifact/maven/redirect?r=releases&g=org.jboss.forge&a=forge-distribution&v=$FORGE_VER&e=zip&c=offline"

# vim set ts=4, sw=4, expandtab:
