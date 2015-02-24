instala_forge() {
    instala_aplicacao
    
    echo "Aplicando patch no script de execução do forge"
    patch "$FORGE_HOME"/bin/forge < "$FUNCOES_DIR"/instalar/patches/forge

    echo "Instalando addons"
    forge_instalar_addons
}

remove_forge() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
