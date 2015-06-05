KEYCLOAK_LINK=keycloak
KEYCLOAK_VER=1.2.0.Final
KEYCLOAK_DIR=keycloak-$KEYCLOAK_VER
KEYCLOAK_INSTALADOR=$KEYCLOAK_DIR.tar.gz
KEYCLOAK_INSTALADOR_URL_COMPLETA=http://nbtelecom.dl.sourceforge.net/project/keycloak/$KEYCLOAK_VER/$KEYCLOAK_INSTALADOR

case $PLATAFORMA in
    Cygwin) export KEYCLOAK_HOME=`cygpath "$KEYCLOAK_HOME"`;;
    *) 
        export KEYCLOAK_HOME=$FERRAMENTAS_DIR/keycloak
        export PATH=$KEYCLOAK_HOME/bin:$PATH
        ;;
esac

# vim set ts=4, sw=4, expandtab:
