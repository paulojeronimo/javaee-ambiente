#!/bin/bash

KEYCLOAK_VER=${KEYCLOAK_VER:-1.5.0.Final}
KEYCLOAK_LINK=keycloak
KEYCLOAK_PORT_OFFSET=${KEYCLOAK_PORT_OFFSET:-0}
case $KEYCLOAK_VER in
    1.5.0.Final|1.4.0.Final)
        KEYCLOAK_BASE_URL=http://downloads.jboss.org/keycloak
        ;;
    *) 
        KEYCLOAK_BASE_URL=http://ufpr.dl.sourceforge.net/project/keycloak
        ;;
esac
case $KEYCLOAK_VER in
    1.5.0.Final|1.4.0.Final|1.3.1.Final|1.2.0.Final)
        KEYCLOAK_DIR=$KEYCLOAK_LINK-$KEYCLOAK_VER
        KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.tar.gz
        KEYCLOAK_EXAMPLES_DIR=keycloak-examples-$KEYCLOAK_VER
        KEYCLOAK_EXAMPLES_URL=$KEYCLOAK_BASE_URL/$KEYCLOAK_VER/${KEYCLOAK_EXAMPLES_DIR}.zip
        ;; 
    1.1.0.Final)
        KEYCLOAK_DIR=keycloak-appliance-dist-all-$KEYCLOAK_VER
        KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.zip
        KEYCLOAK_HOME=$FERRAMENTAS_DIR/$KEYCLOAK_LINK/keycloak
        ;;
esac
KEYCLOAK_INSTALADOR_URL_COMPLETA=$KEYCLOAK_BASE_URL/$KEYCLOAK_VER/$KEYCLOAK_INSTALADOR

case $PLATAFORMA in
    Cygwin) 
        export KEYCLOAK_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$KEYCLOAK_DIR`
        [[ $JBOSS = $KEYCLOAK_LINK ]] && export PATH=$FERRAMENTAS_DIR/$KEYCLOAK_DIR/bin:$PATH
        ;;
    *) 
        export KEYCLOAK_HOME=$FERRAMENTAS_DIR/$KEYCLOAK_LINK
        [[ $JBOSS = $KEYCLOAK_LINK ]] && export PATH=$KEYCLOAK_HOME/bin:$PATH
        ;;
esac

[[ $JBOSS = $KEYCLOAK_LINK ]] && export JBOSS_HOME=$KEYCLOAK_HOME || true

# vim set ts=4, sw=4, expandtab:
