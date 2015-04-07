GRADLE_LINK=gradle
GRADLE_VER=2.3
GRADLE_DIR=gradle-$GRADLE_VER
GRADLE_INSTALADOR=$GRADLE_DIR-all.zip
GRADLE_INSTALADOR_URL_COMPLETA=https://services.gradle.org/distributions/$GRADLE_INSTALADOR

case $PLATAFORMA in
    Cygwin) export GRADLE_HOME=`cygpath "$GRADLE_HOME"`;;
    *) export GRADLE_HOME=$FERRAMENTAS_DIR/gradle
esac
export PATH=$GRADLE_HOME/bin:$PATH

# vim set ts=4, sw=4, expandtab:
