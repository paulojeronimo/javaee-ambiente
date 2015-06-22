#!/bin/bash

KEYCLOAK_VER=${KEYCLOAK_VER:-1.3.1.Final}
KEYCLOAK_LINK=keycloak
KEYCLOAK_BASE_URL=http://ufpr.dl.sourceforge.net/project/keycloak
case $KEYCLOAK_VER in
    1.3.1.Final|1.2.0.Final)
        KEYCLOAK_DIR=keycloak-$KEYCLOAK_VER
        KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.tar.gz
        KEYCLOAK_HOME=$FERRAMENTAS_DIR/$KEYCLOAK_LINK
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
        [ "$KEYCLOAK_HOME" ] && export KEYCLOAK_HOME=`cygpath "$KEYCLOAK_HOME"`
        ;;
    *) 
        export KEYCLOAK_HOME
        #export PATH=$KEYCLOAK_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
