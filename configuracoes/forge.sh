#!/bin/bash

FORGE_LINK=forge
FORGE_VER=${FORGE_VER:-2.19.2.Final}
FORGE_DIR=forge-distribution-$FORGE_VER
FORGE_INSTALADOR=$FORGE_DIR-offline.zip
FORGE_INSTALADOR_URL_COMPLETA="https://repository.jboss.org/nexus/service/local/artifact/maven/redirect?r=releases&g=org.jboss.forge&a=forge-distribution&v=$FORGE_VER&e=zip&c=offline"

case $PLATAFORMA in
    Cygwin) 
        export FORGE_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$FORGE_DIR`
        export PATH=$FERRAMENTAS_DIR/$FORGE_DIR/bin:$PATH
        ;;
    *) 
        export FORGE_HOME=$FERRAMENTAS_DIR/$FORGE_LINK
        export PATH=$FORGE_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
