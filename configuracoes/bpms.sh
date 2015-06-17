#!/bin/bash

BPMS_HOME=$FERRAMENTAS_DIR/jboss-bpms-6.0.3.GA-AD
BPMS_EAP_HOME=$BPMS_HOME/jboss-eap-6.1

case $PLATAFORMA in
    Cygwin) export BPMS_HOME=`cygpath "$BPMS_HOME"`;;
    *)
        export BPMS_HOME
        export PATH=$BPMS_EAP_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
