#!/bin/bash

bpms() {
    local op=$1
    local eap=jboss-eap-6.1

    case $op in
        start)
            JBOSS_HOME=$BPMS_HOME/$eap "$BPMS_HOME"/$eap/bin/standalone.sh &
            ;;
        stop)
            JBOSS_HOME=$BPMS_HOME/$eap "$BPMS_HOME"/$eap/bin/jboss-cli.sh -c :shutdown
            ;;
    esac
}

# vim: ts=4 sw=4 expandtab:
