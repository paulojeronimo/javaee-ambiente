#!/bin/bash

ANT_LINK=ant
ANT_VER=${ANT_VER:-1.9.6}
ANT_DIR=apache-ant-$ANT_VER
ANT_INSTALADOR=$ANT_DIR-bin.tar.gz
ANT_INSTALADOR_URL=http://ftp.unicamp.br/pub/apache/ant/binaries
if [[ $PLATAFORMA = Cygwin ]]
then
    export ANT_HOME=`cygpath -m "$FERRAMENTAS_DIR"/$ANT_DIR`
    export PATH="$FERRAMENTAS_DIR"/$ANT_DIR/bin:$PATH
else
    export ANT_HOME=$FERRAMENTAS_DIR/$ANT_LINK
    export PATH="$ANT_HOME"/bin:$PATH
fi

# vim set ts=4, sw=4, expandtab:
