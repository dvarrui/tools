
# markdown

Herramienta que comprueba el estado de los enlaces dentro de un fichero Markdown.

## Ejemplo de uso

Ejecutamos el comando `markdown link --check examples/vagrant`, para comprobar el estado de los enlaces de los documentos Markdown dentro del directorio `examples/vagrant`:

```
[ markdown ] Running check...
  Check links: 1 files <= examples/vagrant/
  File: examples/vagrant/vagrant.md (3 link/s)
    LINE: 0246 | FAIL | URL: ./images/vagrant-forward-example.png
    LINE: 0260 |  ok  | URL: ./images/vagrantfile-puppet.png
    LINE: 0264 | FAIL | URL: ./images/vagrant-puppet-pp-file.PNG
```

Como resultado vemos lo siguiente:
1. Sólo se ha encontrado 1 fichero Markdown con el nombre `vagrant.md`.
1. Dentro de dicho fichero hay 3 enlaces.
1. El enlace de la línea 260 está correcto (ok).
1. Los enlaces de las líneas 246 y 264 del documento, están rotos (FAIL).

## Ver la ayuda

Ejecutando el programa `markdown` sin argumentos vemos la ayuda:

```
Commands:
  markdown help [COMMAND]                             # Describe available commands or one sp...
  markdown link [--info, --verbose, --check] DIRNAME  # Do action with MarkDown links
  markdown version                                    # Show the program version
```
