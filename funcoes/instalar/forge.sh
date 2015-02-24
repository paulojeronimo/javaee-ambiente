instala_forge() {
    instala_aplicacao
    
    echo "Aplicando patch no script de execução do forge"
    patch "$FORGE_HOME"/bin/forge < "$FUNCOES_DIR"/instalar/patches/forge

    # TODO: comentado enquanto dá erros durante a instalação automática (abrir uma issue p/ a equipe do Forge)
    forge_instalar_addons
}

remove_forge() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
