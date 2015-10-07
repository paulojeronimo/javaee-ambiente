#!/bin/bash

_wildfly_conf() {
    case `distro` in
        Fedora|CentOS) echo -n /etc/default/wildfly.conf;;
        Ubuntu) echo -n /etc/default/wildfly;;
    esac
}

_baixa_driver_jdbc_postgres() {
    echo "Baixando o driver JDBC do PostgreSQL de $POSTGRESQL_JDBC_DRIVER_URL"
    cd "$INSTALADORES_DIR" && wget -c $POSTGRESQL_JDBC_DRIVER_URL
    cd - &> /dev/null
}

_instala_driver_jdbc_postgres() {
    local driver_dir="$WILDFLY_HOME"/modules/system/layers/base/org/postgresql/main
    echo "Instalando o driver JDBC do PostgreSQL como módulo"
    mkdir -p "$driver_dir"
    cat > "$driver_dir"/module.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<module xmlns="urn:jboss:module:1.0" name="org.postgresql">
    <resources>
        <resource-root path="$POSTGRESQL_JDBC_DRIVER"/>
    </resources>
    <dependencies>
        <module name="javax.api"/>
        <module name="javax.transaction.api"/>
    </dependencies>
</module>
EOF
    local driver_file="$INSTALADORES_DIR"/$POSTGRESQL_JDBC_DRIVER
    [ -f "$driver_file" ] || _baixa_driver_jdbc_postgres
    cp "$driver_file" "$driver_dir"/
}

instala_wildfly() {
    local original_file

    instala_aplicacao

    if [ "$PLATAFORMA" = "Linux" ]
    then
        echo "Criando o arquivo `_wildfly_conf` ..."
        cat <<EOF | sudo tee `_wildfly_conf` &> /dev/null
JAVA_HOME="$JAVA_HOME"
JBOSS_USER=$USER
JBOSS_HOME="$WILDFLY_HOME"
JBOSS_MODE=standalone
EOF

        case `distro` in
            Fedora|CentOS)
                original_file="$WILDFLY_HOME"/bin/init.d/wildfly-init-redhat.sh
                ;;
            Ubuntu)
                original_file="$WILDFLY_HOME"/bin/init.d/wildfly-init-debian.sh
                ;;
        esac

        echo "Copiando arquivo \"$original_file\" para /etc/init.d/wildfly"
        sudo cp "$original_file" /etc/init.d/wildfly
    fi

    _instala_driver_jdbc_postgres

    echo "Configurando o usuário/senha (admin/@dmin123) para acesso a interface administrativa"
    echo 'admin=e17dc970fbc40f5d003d1e3e431985f5' | tee -a "$WILDFLY_CONFIGURATION"/mgmt-users.properties &> /dev/null
    echo 'admin=' | tee -a "$WILDFLY_CONFIGURATION"/mgmt-groups.properties &> /dev/null

    if [ "$PLATAFORMA" = "Linux" ]
    then
        echo "Configurando a inicialização automática no boot"
        case `distro` in
            Fedora|CentOS) sudo chkconfig wildfly on;;
            Ubuntu) sudo update-rc.d wildfly defaults;;
        esac
    fi
}

remove_wildfly() {
    if [ "$PLATAFORMA" = "Linux" ]
    then
        local wildfly_files="/etc/init.d/wildfly `_wildfly_conf`"
        for f in $wildfly_files
        do
            if [ -f "$f" ]
            then
                echo "Removendo o arquivo \"$f\""
                sudo rm -f $f
            fi
        done
    fi
    remove_aplicacao
}

# vim: set ts=4 sw=4 expandtab:
