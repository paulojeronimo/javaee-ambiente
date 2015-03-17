FORGE_LINK=forge
FORGE_PACKAGE=forge-distribution
FORGE_VER=2.15.1.Final
FORGE_DIR=$FORGE_PACKAGE-$FORGE_VER
FORGE_INSTALADOR=$FORGE_DIR-offline.zip
FORGE_INSTALADOR_URL_COMPLETA=https://repository.jboss.org/nexus/service/local/artifact/maven/redirect\?r\=releases\&g\=org.jboss.forge\&a\=forge-distribution\&v\=LATEST\&e\=zip\&c\=offline

export FORGE_HOME=$FERRAMENTAS_DIR/forge
export PATH=$FORGE_HOME/bin:$PATH

# vim set ts=4, sw=4, expandtab:
