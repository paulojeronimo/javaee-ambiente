#!/bin/bash

WILDFLY_LINK=wildfly
WILDFLY_VER=${WILDFLY_VER:-9.0.1.Final} # 8.1.0.Final, 8.2.0.Final, 9.0.1.Final
WILDFLY_DIR=wildfly-$WILDFLY_VER
WILDFLY_INSTALADOR=$WILDFLY_DIR.tar.gz
WILDFLY_INSTALADOR_URL_COMPLETA=http://download.jboss.org/wildfly/$WILDFLY_VER/$WILDFLY_INSTALADOR

case $PLATAFORMA in
    Cygwin) 
        [ "$WILDFLY_HOME" ] && export WILDFLY_HOME=`cygpath -m "$WILDFLY_HOME"`
        ;;
    *) 
        export WILDFLY_HOME=$FERRAMENTAS_DIR/wildfly
        #export PATH=$WILDFLY_HOME/bin:$PATH
        ;;
esac

WILDFLY_BASE=$WILDFLY_HOME/standalone
WILDFLY_CONFIGURATION=$WILDFLY_BASE/configuration
WILDFLY_DEPLOYMENTS=$WILDFLY_BASE/deployments
WILDFLY_LOG=$WILDFLY_BASE/log

# vim set ts=4, sw=4, expandtab:
