instala_eclipse() {
    if [ -f "$INSTALADORES_DIR"/$ECLIPSE_CONFIGURADO ]
    then
        eclipse_restaurar
    else
        instala_aplicacao
        if [ "$PLATAFORMA" = "Cygwin" ]
        then
            find "$ECLIPSE_HOME" -type f -name "*.dll" -exec chmod +x {} \;
        fi
     fi
}

remove_eclipse() {
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
