About: Plan for setting up a Vim-based LaTeX workflow on a Debian-based Linux system.

### System preliminaries

```bash
# Ensure we're on X11 and not Wayland
echo $XDG_SESSION_TYPE

# Install Neovim (out of the box support for RPC server, Python, clipboard;
# TreeSitter and Telescope; I know it better and thus can help more)
sudo apt install neovim

# Ensure `EDITOR` environment variable is set to `nvim`
echo "export EDITOR=nvim" >> ${HOME}/.bashrc

# Clipboard management
sudo apt install xclip

# Possibly set up caps2esc (can do later)
sudo apt install interception-caps2esc

# Possibly install a file manager (can do later)
sudo apt install vifm
```

### Vim-LaTeX packages

```bash
# Upgrade package lists
sudo apt-get update

# Install all relevant LaTeX packages in one shot
sudo apt install texlive-full

# Install a PDF viewer
sudo apt install zathura xdotool

# Install Python packages (for using UltiSnips)
sudo apt install python3 python3-pip
pip install pynvim
```

### Vim preliminaries

- `checkhealth`
- `set clipboard=unnamedplus`
- Plugin manager: Vim Plug
- Install VimTeX and UltiSnips

### UltiSnips

- Set keybindings for triggering and navigating snippets
- Set snippet directory
- Create a simple `all.snippets` file

### Set up VimTeX

- Create `ftplugin/tex.vim` and set `vimtex_view_method`
- Check `VimtexInfo` to see that viewer and compiler are correctly set
- Check that `VimtexView` and `VimtexCompile` work
- Add key bindings in `ftplugin/tex.vim` for `VimtexView` and `VimtexCompile`
