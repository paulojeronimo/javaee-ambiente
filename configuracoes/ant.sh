ANT_LINK=ant
ANT_VER=1.9.4
ANT_DIR=apache-ant-$ANT_VER
ANT_INSTALADOR=$ANT_DIR-bin.tar.gz
ANT_INSTALADOR_URL=http://ftp.unicamp.br/pub/apache//ant/binaries

case $PLATAFORMA in
    Cygwin) export ANT_HOME=`cygpath "$ANT_HOME"`;;
    *) export ANT_HOME=$FERRAMENTAS_DIR/$ANT_LINK;;
esac
export PATH=$ANT_HOME/bin:$PATH

# vim set ts=4, sw=4, expandtab:
