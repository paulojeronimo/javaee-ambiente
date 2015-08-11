#!/bin/bash

BPMS_LINK=bpms
BPMS_VER=${BPMS_VER:-6.1.0.GA}
case "$BPMS_VER" in
    6.1.0.GA)
        BPMS_DIR=jboss-eap-6.4
        BPMS_INSTALADOR=jboss-bpmsuite-$BPMS_VER-deployable-eap6.x.zip
        ;;
esac
BPMS_INSTALA_OPCS='--nao-baixa-arquivo'

case $PLATAFORMA in
    Cygwin) 
        if [ "$BPMS_HOME" ]
        then
            export BPMS_HOME=`cygpath "$BPMS_HOME"`
        fi
        ;;
    *)
        export BPMS_HOME=$FERRAMENTAS_DIR/jboss-bpms-6.0.3.GA-AD
        export BPMS_EAP_HOME=$BPMS_HOME/jboss-eap-6.1
        export PATH=$BPMS_EAP_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
