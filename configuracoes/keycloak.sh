KEYCLOAK_VER=${KEYCLOAK_VER:-1.2.0.Final}
KEYCLOAK_LINK=keycloak

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
        ;; 
esac
KEYCLOAK_INSTALADOR_URL_COMPLETA=http://ufpr.dl.sourceforge.net/project/keycloak/$KEYCLOAK_VER/$KEYCLOAK_INSTALADOR

case $PLATAFORMA in
    Cygwin) export KEYCLOAK_HOME=`cygpath "$KEYCLOAK_HOME"`;;
    *) 
        export KEYCLOAK_HOME
        export PATH=$KEYCLOAK_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
