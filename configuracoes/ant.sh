#!/bin/bash

ANT_LINK=ant

case $PLATAFORMA in
    Cygwin) 
        [ "$ANT_HOME" ] && export ANT_HOME=`cygpath -m "$ANT_HOME"`
        ;;
    *) 
        export ANT_HOME=$FERRAMENTAS_DIR/$ANT_LINK
        export PATH=$ANT_HOME/bin:$PATH
        ;;
esac

ANT_VER=${ANV_VER:-1.9.6}
ANT_DIR=apache-ant-$ANT_VER
ANT_INSTALADOR=$ANT_DIR-bin.tar.gz
ANT_INSTALADOR_URL=http://ftp.unicamp.br/pub/apache/ant/binaries

# vim set ts=4, sw=4, expandtab:
