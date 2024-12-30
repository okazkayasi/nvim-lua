# Neovim Configuration

This repository contains my personal Neovim configuration files, designed to create a modern and efficient development environment.

## Features

- Modern UI with custom colorscheme and statusline
- LSP (Language Server Protocol) integration for code intelligence
- Fuzzy finding with Telescope
- Git integration
- Tree-sitter for improved syntax highlighting
- Auto-completion
- File explorer
- Custom keymaps for improved workflow

## Prerequisites

- Neovim >= 0.8.0
- Git
- A Nerd Font (for icons)
- Node.js (for ts-ls)
- ripgrep (for Telescope file searching)
## Installation Prerequisites

Before installing this configuration, ensure you have the following tools installed:

1. **Neovim**: Version 0.8.0 or higher
   - On macOS: `brew install neovim`
   - On Ubuntu/Debian: `sudo apt install neovim`
   - On Arch Linux: `sudo pacman -S neovim`

2. **Git**: For plugin management
   - On macOS: `brew install git`
   - On Ubuntu/Debian: `sudo apt install git`
   - On Arch Linux: `sudo pacman -S git`

3. **Nerd Font**: For icons (e.g., JetBrainsMono Nerd Font)
   - Download from [Nerd Fonts](https://www.nerdfonts.com/)
   - Install on your system and configure your terminal to use it

4. **Node.js**: For LSP servers
   - Install via [official website](https://nodejs.org/)
   - Or use nvm (Node Version Manager)

5. **ripgrep**: For Telescope file searching
   - On macOS: `brew install ripgrep`
   - On Ubuntu/Debian: `sudo apt install ripgrep`
   - On Arch Linux: `sudo pacman -S ripgrep`

## Installation Steps

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
   ```

2. Start Neovim:
   ```bash
   nvim
   ```
   The configuration will automatically:
   - Install the lazy.nvim package manager
   - Download and install all plugins
   - Set up LSP servers and configurations

3. Wait for all installations to complete. You may see some errors on first launch - this is normal and will resolve after all plugins are installed.

4. Restart Neovim to ensure all changes take effect:
   ```bash
   :qa
   nvim
   ```

5. Install Language Servers using Mason:
   ```bash
   :Mason
   ```
   In the Mason window:
   - Press `i` next to each language server you want to install
   - Common language servers include:
     - lua_ls (Lua)
     - pyright (Python)
     - ts-ls (TypeScript/JavaScript)
     - rust_analyzer (Rust)
     - gopls (Go)
   - Press `q` to exit Mason when done

   The installed language servers will automatically be configured through mason-lspconfig.

