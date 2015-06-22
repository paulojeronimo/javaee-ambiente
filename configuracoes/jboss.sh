#!/bin/bash

JBOSS_LINK=jboss
JBOSS_VER=${JBOSS_VER:-6.4} # versões suportadas: 6.4, 6.3.0
case $JBOSS_VER in
    6.4)
        JBOSS_DIR=jboss-eap-6.4
        JBOSS_INSTALADOR=$JBOSS_DIR.0.zip
        ;;
    6.3.0)
        JBOSS_DIR=jboss-eap-6.3
        JBOSS_INSTALADOR=$JBOSS_DIR.0.zip
        ;;
esac
JBOSS_INSTALA_OPCS='--nao-baixa-arquivo'

case $PLATAFORMA in
    Cygwin) 
        [ "$JBOSS_HOME" ] && export JBOSS_HOME=`cygpath "$JBOSS_HOME"`
        ;;
    *) 
        export JBOSS_HOME=$FERRAMENTAS_DIR/jboss
        export PATH=$JBOSS_HOME/bin:$PATH
        ;;
esac

# resolve o bug de não ter essa variável ajustada no standalone.sh antes da chamada a cygpath
export JBOSS_MODULEPATH=$JBOSS_HOME/modules

JBOSS_BASE=$JBOSS_HOME/standalone
JBOSS_CONFIGURATION=$JBOSS_BASE/configuration
JBOSS_DEPLOYMENTS=$JBOSS_BASE/deployments
JBOSS_LOG=$JBOSS_BASE/log

# vim set ts=4, sw=4, expandtab:
