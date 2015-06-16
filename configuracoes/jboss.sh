#!/bin/bash

JBOSS_LINK=jboss
JBOSS_TYPE=${JBOSS_TYPE:-wildfly} # jboss_eap, wildfly

case $JBOSS_TYPE in
    wildfly)
        JBOSS_VER=${JBOSS_VER:-8.2.0.Final} # 8.1.0.Final, 8.2.0.Final
        JBOSS_DIR=wildfly-$JBOSS_VER
        JBOSS_INSTALADOR=$JBOSS_DIR.tar.gz
        JBOSS_INSTALADOR_URL_COMPLETA=http://download.jboss.org/wildfly/$JBOSS_VER/$JBOSS_INSTALADOR
        ;;
    jboss_eap)
        JBOSS_VER=${JBOSS_VER:-6.4.0} # 6.3.0, 6.4.0
        case $JBOSS_VER in
            6.3.0)
                JBOSS_DIR=jboss-eap-6.3
                JBOSS_INSTALADOR=$JBOSS_DIR.0.zip
                ;;
            6.4.0)
                JBOSS_DIR=jboss-eap-6.4
                JBOSS_INSTALADOR=$JBOSS_DIR.0.zip
                ;;
        esac
        JBOSS_INSTALA_OPCS='--nao-baixa-arquivo'
        ;;
esac

case $PLATAFORMA in
    Cygwin) 
        [ "$JBOSS_HOME" ] && export JBOSS_HOME=`cygpath "$JBOSS_HOME"`
        ;;
    *) 
        export JBOSS_HOME=$FERRAMENTAS_DIR/jboss
        export PATH=$JBOSS_HOME/bin:$PATH
        ;;
esac

JBOSS_BASE=$JBOSS_HOME/standalone
JBOSS_CONFIGURATION=$JBOSS_BASE/configuration
JBOSS_DEPLOYMENTS=$JBOSS_BASE/deployments
JBOSS_LOG=$JBOSS_BASE/log

# vim set ts=4, sw=4, expandtab:
