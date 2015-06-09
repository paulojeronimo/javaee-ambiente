KEYCLOAK_VER=${KEYCLOAK_VER:-1.2.0.Final}
KEYCLOAK_LINK=keycloak
KEYCLOAK_BASE_URL=http://ufpr.dl.sourceforge.net/project/keycloak
KEYCLOAK_INSTALADOR_URL_COMPLETA=$KEYCLOAK_BASE_URL/$KEYCLOAK_VER/$KEYCLOAK_INSTALADOR

case $KEYCLOAK_VER in
    1.1.0.Final)
        KEYCLOAK_DIR=keycloak-appliance-dist-all-$KEYCLOAK_VER
        KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.zip
        KEYCLOAK_HOME=$FERRAMENTAS_DIR/keycloak/keycloak
        ;;
    1.2.0.Final)
        KEYCLOAK_DIR=keycloak-$KEYCLOAK_VER
        KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.tar.gz
        KEYCLOAK_HOME=$FERRAMENTAS_DIR/keycloak
        KEYCLOAK_EXAMPLES_DIR=keycloak-examples-$KEYCLOAK_VER
        KEYCLOAK_EXAMPLES_URL=$KEYCLOAK_BASE_URL/$KEYCLOAK_VER/${KEYCLOAK_EXAMPLES_DIR}.zip
        ;; 
esac

case $PLATAFORMA in
    Cygwin) export KEYCLOAK_HOME=`cygpath "$KEYCLOAK_HOME"`;;
    *) 
        export KEYCLOAK_HOME
        export PATH=$KEYCLOAK_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
