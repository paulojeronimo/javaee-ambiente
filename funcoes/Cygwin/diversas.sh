#!/bin/bash

open() {
    cmd /C start "$@"
}

firefox() {
    open firefox "$@"
}

# vim: set ts=4 sw=4 expandtab:
