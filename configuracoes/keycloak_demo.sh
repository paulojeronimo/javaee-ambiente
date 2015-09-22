#!/bin/bash

KEYCLOAK_DEMO_VER=${KEYCLOAK_DEMO_VER:-1.5.0.Final}
KEYCLOAK_DEMO_LINK=keycloak-demo
KEYCLOAK_DEMO_PORT_OFFSET=${KEYCLOAK_DEMO_PORT_OFFSET:-0}
KEYCLOAK_DEMO_BASE_URL=http://downloads.jboss.org/keycloak
KEYCLOAK_DEMO_DIR=${KEYCLOAK_DEMO_LINK}-$KEYCLOAK_DEMO_VER
KEYCLOAK_DEMO_INSTALADOR=${KEYCLOAK_DEMO_DIR}.tar.gz
KEYCLOAK_DEMO_INSTALADOR_URL_COMPLETA=$KEYCLOAK_DEMO_BASE_URL/$KEYCLOAK_DEMO_VER/$KEYCLOAK_DEMO_INSTALADOR

case $PLATAFORMA in
    Cygwin) 
        export KEYCLOAK_DEMO_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$KEYCLOAK_DEMO_DIR/keycloak`
        [[ $JBOSS = $KEYCLOAK_DEMO_LINK ]] && export PATH=$FERRAMENTAS_DIR/$KEYCLOAK_DEMO_DIR/keycloak/bin:$PATH
        ;;
    *) 
        export KEYCLOAK_DEMO_HOME=$FERRAMENTAS_DIR/$KEYCLOAK_DEMO_LINK/keycloak
        [[ $JBOSS = $KEYCLOA_DEMO_LINK ]] && export PATH=$KEYCLOAK_DEMO_HOME/bin:$PATH
        ;;
esac

[[ $JBOSS = $KEYCLOAK_DEMO_LINK ]] && export JBOSS_HOME=$KEYCLOAK_DEMO_HOME || true

# vim set ts=4, sw=4, expandtab:
