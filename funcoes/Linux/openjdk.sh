#!/bin/bash

_openjdk_instalar_Fedora() {
    sudo dnf -y install java-1.8.0-openjdk-devel
}

# TODO
_openjdk_instalar_Ubuntu() {
:
}

# TODO
_openjdk_instalar_CentOS() {
:
}

openjdk_instalar() {
    _openjdk_instalar_`distro`
}

_openjdk_remover_Fedora() {
    sudo dnf -y remove java-1.8.0-openjdk-devel
}

# TODO
_openjdk_remover_Ubuntu() {
:
}

# TODO
_openjdk_remover_CentOS() {
:
}

openjdk_remover() {
    _openjdk_remover_`distro`
}

# vim: ts=4 sw=4 expandtab:
