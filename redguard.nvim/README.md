
# ekewn/redguard.nvim

## Neovim theme based off of the [redguard Color Palette.](https://www.nordtheme.com/docs/colors-and-palettes)

## Features

redguard.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

It's Nord... but red instead of blue...
Let's be very clear, this is a fork of the wonderful Nord colorscheme prepared by [shaunsingh](https://github.com/shaunsingh/nord.nvim).
All credit where it is due. THANK YOU.
I basically just used sed and made this a red theme instead of blues. It's warmer and makes you feel like everything is an error.

+ Supported plugins:
  + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
  + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
  + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
  + [Git Gutter](https://github.com/airblade/vim-gitgutter)
  + [git-messenger](https://github.com/rhysd/git-messenger.vim)
  + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
  + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
  + [NERDTree](https://github.com/preservim/nerdtree)
  + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
  + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  + [Dashboard](https://github.com/glepnir/dashboard-nvim)
  + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
  + [Lualine](https://github.com/hoob3rt/lualine.nvim)
  + [Neogit](https://github.com/TimUntersberger/neogit)
  + [vim-sneak](https://github.com/justinmk/vim-sneak)
  + [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)
  + [barbar.nvim](https://github.com/romgrk/barbar.nvim)
  + [nvim-notify](https://github.com/rcarriga/nvim-notify)
  + [leap.nvim](https://github.com/ggandor/leap.nvim)
  + [mini.nvim](https://github.com/echasnovski/mini.nvim)
  + [aerial.nvim](https://github.com/stevearc/aerial.nvim)
  + [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
  + [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:

```vim
" If you are using Vim-Plug
Plug 'ekewn/reguard.nvim'
```

```lua
-- If you are using Packer
use 'ekewn/redguard.nvim'
```

## 🌓 Usage

Enable the colorscheme:

```vim
"Vim-Script:
colorscheme redguard
```

```lua
--Lua:
vim.cmd[[colorscheme redguard]]
```

To enable the `redguard` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'redguard'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| redguard_contrast                   | `false`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| redguard_borders                    | `false`     | Enable the border between verticaly split windows visable
| redguard_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background
| redguard_cursorline_transparent     | `false`     | Set the cursorline transparent/visible
| redguard_enable_sidebar_background  | `false`     | Re-enables the background of the sidebar if you disabled the background of everything
| redguard_italic                     | `true`      | enables/disables italics
| redguard_uniform_diff_background    | `false`     | enables/disables colorful backgrounds when used in *diff* mode
| redguard_bold                       | `true`      | enables/disables bold

```lua
-- Example config in lua
vim.g.redguard_contrast = true
vim.g.redguard_borders = false
vim.g.redguard_disable_background = false
vim.g.redguard_italic = false
vim.g.redguard_uniform_diff_background = true
vim.g.redguard_bold = false

-- Load the colorscheme
require('redguard').set()
```

```vim
" Example config in Vim-Script
let g:redguard_contrast = v:true
let g:redguard_borders = v:false
let g:redguard_disable_background = v:false
let g:redguard_italic = v:false
let g:redguard_uniform_diff_background = v:true
let g:redguard_bold = v:false

" Load the colorscheme
colorscheme redguard
```

### headlines support

To support [headlines]("https://github.com/lukas-reineke/headlines.nvim"), you should add these code to your settings:

```lua
require("headlines").setup({
    markdown = {
        headline_highlights = {
            "Headline1",
            "Headline2",
            "Headline3",
            "Headline4",
            "Headline5",
            "Headline6",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
})

```

### bufferline support

To support [BufferLine](https://github.com/akinsho/nvim-bufferline.lua), you can add these code to your settings:

```lua
local highlights = require("redguard").bufferline.highlights({
    italic = true,
    bold = true,
})

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },
    highlights = highlights,
})

```

If you want to use slant separator:

```lua
local highlights = require("redguard").bufferline.highlights({
    italic = true,
    bold = true,
    fill = "#181c24"
})

require("bufferline").setup({
    options = {
        separator_style = "slant",
    },
    highlights = highlights,
})

```


The default setting of bufferline highlights is

```lua
{
    fill = colors.redguard0_gui,
    indicator = colors.redguard9_gui,
    bg = colors.redguard0_gui,
    buffer_bg = colors.redguard0_gui,
    buffer_bg_selected = colors.redguard1_gui,
    buffer_bg_visible = "#2A2F3A",
    bold = true,
    italic = true,
}
```
