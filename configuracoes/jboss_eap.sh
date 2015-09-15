#!/bin/bash

JBOSS_EAP_LINK=jboss
JBOSS_EAP_VER=${JBOSS_EAP_VER:-6.4} # versões suportadas: 6.4, 6.3.0
JBOSS_EAP_INSTALA_DIR=${JBOSS_EAP_INSTALA_DIR:-$FUNCOES_DIR/instalar}
case $JBOSS_EAP_VER in
    6.4)
        JBOSS_EAP_DIR=jboss-eap-6.4
        JBOSS_EAP_INSTALADOR=$JBOSS_EAP_DIR.0.zip
        ;;
    6.3.0)
        JBOSS_EAP_DIR=jboss-eap-6.3
        JBOSS_EAP_INSTALADOR=$JBOSS_EAP_DIR.0.zip
        ;;
esac
JBOSS_EAP_INSTALA_OPCS='--nao-baixa-arquivo'

case $PLATAFORMA in
    Cygwin) 
        [ "$JBOSS_EAP_HOME" ] && export JBOSS_EAP_HOME=`cygpath -m "$JBOSS_EAP_HOME"`
        ;;
    *) 
        export JBOSS_EAP_HOME=$FERRAMENTAS_DIR/jboss
        export PATH=$JBOSS_EAP_HOME/bin:$PATH
        ;;
esac

JBOSS_EAP_BASE=$JBOSS_EAP_HOME/standalone
JBOSS_EAP_CONFIGURATION=$JBOSS_EAP_BASE/configuration
JBOSS_EAP_DEPLOYMENTS=$JBOSS_EAP_BASE/deployments
JBOSS_EAP_LOG=$JBOSS_EAP_BASE/log

# vim set ts=4, sw=4, expandtab:
