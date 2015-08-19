# Scripts para a montagem de um ambiente Java EE

## Procedimentos 

### No Cygwin

Instale o Cygwin conforme os procedimentos em  https://github.com/paulojeronimo/dicas-windows/blob/master/instalacao-cygwin.asciidoc.

Instale o projeto [dotfiles](https://github.com/paulojeronimo/dotfiles). Feche o shell após fazer isso.

Reabra o shell e execute os comandos a seguir (neste exemplo, as ferramentas são instaladas em ``C:\tools``):

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
