# LEEME 
Dotfiles personalizados

## Description 
El objetivo es conservar y registrar los cambios de los archivos de configuración y personalizaciones base

## Requisitos base
  - zsh: Intérprete de comandos para sistemas Unix (como Linux y macOS)
  - neovim: Editor de texto modal en terminal, moderno y altamente extensible (fork de Vim)
  - gcc: Compilador (principalmente C y C++)
  - curl: Herramienta para transferir datos desde o hacia servidores (*HTTP, HTTPS, FTP, etc.*)
  - eza: Reemplazo moderno de *ls* que muestra archivos y directorios con mejor formato, colores y metadatos adicionales.
  - bat: Alternativa a *cat* con resaltado de sintaxis, numeración de líneas e integración con *git*
  - fzf: Buscador difuso interactivo
  - zoxide: Gestor inteligente de directorios que aprende rutas más usadas y permite navegar más rápido
  - tmux: Multiplexor de terminal que permite dividir la pantalla, manejar múltiples sesiones y mantener procesos activos en segundo plano

### Archlinux
  ```sh
  sudo pacman -Syu --needed base-devel git curl neovim sudo zsh stow eza bat fzf zoxide
  ```

### Debian / Ubuntu
  ```sh
  sudo apt-get update && sudo apt-get install -y build-essential git curl neovim sudo zsh stow eza bat fzf zoxide
  ```

### Fedora
  ```sh
  sudo dnf upgrade -y && sudo dnf install -y @development-tools git curl neovim sudo zsh stow eza bat fzf zoxide
  ```

## Extras
  - foot: Emulador de terminal ligero y rápido para Wayland, enfocado en rendimiento, simplicidad y bajo consumo de recursos.
  - TigerVNC: Implementación (servidor y cliente) de VNC para control remoto de escritorios.

### Archlinux
  ```sh
  sudo pacman -S foot tigervnc
  ```

### Debian / Ubuntu
  ```sh
  sudo apt-get install -y foot tigervnc-viewer
  ```

### Fedora
  ```sh
  sudo dnf install -y foot tigervnc
  ```
