#!/bin/bash

WILDFLY_LINK=wildfly
WILDFLY_VER=${WILDFLY_VER:-9.0.1.Final} # 8.1.0.Final, 8.2.0.Final, 9.0.1.Final
WILDFLY_DIR=$WILDFLY_LINK-$WILDFLY_VER
WILDFLY_INSTALADOR=$WILDFLY_DIR.tar.gz
WILDFLY_INSTALADOR_URL_COMPLETA=http://download.jboss.org/wildfly/$WILDFLY_VER/$WILDFLY_INSTALADOR

case $PLATAFORMA in
    Cygwin) 
        export WILDFLY_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$WILDFLY_DIR`
        [[ $JBOSS = $WILDFLY_LINK ]] && export PATH=$FERRAMENTAS_DIR/$WILDFLY_DIR/bin:$PATH
        ;;
    *) 
        export WILDFLY_HOME=$FERRAMENTAS_DIR/$WILDFLY_LINK
        [[ $JBOSS = $WILDFLY_LINK ]] && export PATH=$WILDFLY_HOME/bin:$PATH
        ;;
esac

WILDFLY_BASE=$WILDFLY_HOME/standalone
WILDFLY_CONFIGURATION=$WILDFLY_BASE/configuration
WILDFLY_DEPLOYMENTS=$WILDFLY_BASE/deployments
WILDFLY_LOG=$WILDFLY_BASE/log

[[ $JBOSS = $WILDFLY_LINK ]] && export JBOSS_HOME=$WILDFLY_HOME || true

# vim set ts=4, sw=4, expandtab:
