#!/bin/bash

case $PLATAFORMA in
    Cygwin) 
        [ "$BPMS_HOME" ] && export BPMS_HOME=`cygpath "$BPMS_HOME"`
        ;;
    *)
        export BPMS_HOME=$FERRAMENTAS_DIR/jboss-bpms-6.0.3.GA-AD
        export BPMS_EAP_HOME=$BPMS_HOME/jboss-eap-6.1
        export PATH=$BPMS_EAP_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
