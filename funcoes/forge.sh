#!/bin/bash

forge_instalar() { instalar forge "$@"; }
forge_remover() { remover forge "$@"; }
forge_instalar_addons() {
    echo "Instalando o addon para o Gradle ..."
    forge -b -i org.jboss.forge.addon:gradle

    echo "Instalando o addon para o AngularJS ..."
    forge -b -i org.jboss.forge.addon:angularjs

    echo "Instalando o addon para o Arquillian ..."
    forge -b -i org.arquillian.forge:arquillian-addon
}

# vim: set ts=4 sw=4 expandtab:
