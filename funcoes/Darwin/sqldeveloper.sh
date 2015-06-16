#!/bin/bash

sqldeveloper() {
    cd "$SQLDEVELOPER_HOME"
    ./sqldeveloper.sh &> /dev/null &
    cd - &> /dev/null
}
