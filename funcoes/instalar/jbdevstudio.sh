instala_jbdevstudio() {
    local install_config_record="$CONFIGURACOES_DIR/`uname`/jbdevstudio/InstallConfigRecord.xml"

    if [ -f "$INSTALADORES_DIR"/$JBDEVSTUDIO_CONFIGURADO ]
    then
        echo "Execute o comando jbdevstudio_restaurar ..."
    else
        echo "Instalando o JBoss Developer Studio através do java ..."
        if [ -f "$install_config_record" ]
        then
            java -jar "$INSTALADORES_DIR/${!APP_INSTALADOR}" "$install_config_record"
        else
            java -jar "$INSTALADORES_DIR/${!APP_INSTALADOR}"
        fi
    fi
}

remove_jbdevstudio() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
