# Neovim Configuration

New neovim configuration for neovim version >= 0.5.0

### Install the packages required for the various plugins

Conda packages should be installed first:

```bash
conda install -c conda-forge ripgrep
conda install -c conda-forge nodejs
conda install -c conda-forge ninja
conda install -c conda-forge gcc
conda install -c conda-forge libstdcxx-ng
conda install -c conda-forge gxx_impl_linux-64
conda install -c conda-forge fd-find
```

Then the language servers should be installed using `npm`

```bash
npm i -g pyright
npm i -g bash-language-server
npm i -g vscode-langservers-extracted
npm i -g vim-language-server
```

### Install all the plugins

Open any neovim file and run the following command to install the plugins:

```bash
:PlugInstall
```
