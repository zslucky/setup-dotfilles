# setup-dotfilles
Los dotfiles de configuración de mi Mac para nuevas máquinas

## Guía de configuración

> Si tienes problemas con la red, puedes usar un proxy socks antes de ejecutar el script, por ejemplo: `export ALL_PROXY=socks5://127.0.0.1:1086`

1. Actualiza la configuración preferida de OSX en `.osx` si es necesario.
2. Ejecuta `sh setup-my-machine.sh`

## Configuración personalizada

Todos los dotfiles están enlazados a tu directorio personal, por lo que puedes actualizar los dotfiles para configurar tu entorno en cualquier momento que lo desees.

1. `.extra` puede añadir algunas configuraciones adicionales para el entorno.
2. `.functions` puede añadir funciones personalizadas que uses.
3. `.aliases` puede añadir alias en tu interfaz de comandos.
4. Otros como `.gitconfig`, `.gitignore`, `.vimrc` pueden añadir configuraciones específicas para aplicaciones.

## Configuración personalizada de git

1. Crea `.gitconfig.local` para guardar tu configuración personalizada (que no se commitirá al repositorio).
