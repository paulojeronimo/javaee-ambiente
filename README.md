# Scripts para a montagem de um ambiente Java EE

## Procedimentos 

### No Windows (8.1)

Antes de começar a utilizar este projeto você já deverá ter instalado o [Oracle JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html). É recomendado o uso da versão 8 pois algumas das ferramentas instaladas através deste projeto pressupõe que ele esteja sendo utilizado (ex.: WildFly, Eclipse Mars). A forma mais simples e rápida de se instalar essa versão do JDK no Windows é pelo uso do [Chocolatey](http://chocolatey.org), através do comando abaixo:

```
choco install -y jdk8
```

Os scripts deste projeto dependem da utilização do Cygwin. Instale-o seguindo os procedimentos descitos em  https://github.com/paulojeronimo/dicas-windows/blob/master/instalacao-cygwin.asciidoc.

Em seguida, instale o projeto [dotfiles](https://github.com/paulojeronimo/dotfiles). Feche o shell após fazer isso.

Reabra o shell e execute os comandos a seguir. Nesses comandos, os arquivos deste projeto são "clonados" para o diretório em ``C:\tools`` que é o diretório padrão onde é instalado o Cygwin quando essa instalação é realizada através do Chocolatey.

```bash
cd "C:\tools"
git init
git remote add origin https://github.com/paulojeronimo/javaee-ambiente
git fetch
git checkout -t origin/master
```

Copie o arquivo ``ambiente.bat.exemplo`` para ``ambiente.bat`` e edite-o conforme as tuas configurações de ambiente:
```
cp ambiente.bat.exemplo ambiente.bat
vim ambiente.bat
```

Por fim, ajuste o ambiente que será utilizado alterando o arquivo ``~/.ambiente`` com o seguinte comando:
```
setenv ambiente
```

Feche o shell. Altere o shortcut para a inicialização do Cygwin apontando-o para o script ``C:\tools\scripts\cygwin.bat`` (a diretório de inicialização deverá ser ``C:\tools\scripts``).
