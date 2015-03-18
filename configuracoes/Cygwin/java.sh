#!/bin/bash

if [ "$JAVA_HOME" ]
then
    JAVA_HOME=`cygpath "$JAVA_HOME"`
else
    echo 'A variável JAVA_HOME não está configurada!'
fi

export PATH=$JAVA_HOME/bin:$PATH

# vim set ts=4, sw=4, expandtab:
