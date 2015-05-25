bpms() {
    local op=$1

    case $op in
        start)
            JBOSS_HOME=$BPMS_HOME $BPMS_HOME/bin/standalone.sh
            ;;
        stop)
            JBOSS_HOME=$BPMS_HOME $BPMS_HOME/bin/jboss-cli.sh -c :shutdown
            ;;
    esac
}

# vim: ts=4 sw=4 expandtab:
