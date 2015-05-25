case $PLATAFORMA in
    Cygwin) export KEYCLOAK_HOME=`cygpath "$KEYCLOAK_HOME"`;;
esac

# vim set ts=4, sw=4, expandtab:
