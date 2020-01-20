# My [Neovim](https://neovim.io/) config file

* ##### [Installation](#install)
* ##### [Plugins](#plugins)
* ##### [Custom airline](#custom-airline)

<br>
<br>

## Install
Clone this repo to your `.config` folder, which on my case is in `$HOME/.config`

``` bash
git clone https://github.com/diovanii/nvim $HOME/.config
```

<br>

## Plugins
* **[auto-pairs](https://github.com/jiangmiao/auto-pairs)**
* **[emmet-vim](https://github.com/mattn/emmet-vim)**
* **[markdown-preview](https://github.com/iamcco/markdown-preview.nvim)**
* **[ultisnips](https://github.com/sirver/UltiSnips)**
* **[vim-airline](https://github.com/vim-airline/vim-airline)**
* **[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)**
* **[vim-commentary](https://github.com/tpope/vim-commentary)**
* **[vim-highlightedyank](https://github.com/machakann/vim-highlightedyank)**
* **[vim-matchit](https://github.com/adelarsq/vim-matchit)**
* **[vim-polyglot](https://github.com/sheerun/vim-polyglot)**
* **[vim-pasta](https://github.com/sickill/vim-pasta)**
* **[vim-repeat](https://github.com/tpope/vim-repeat)**
* **[vim-scripts-loremipsum](https://github.com/vim-scripts/loremipsum)**
* **[vim-surround](https://github.com/tpope/vim-surround)**

<br>

## Custom [Airline](https://github.com/vim-airline/vim-airline)
![Custom airline print](preview.png)

_The **`☰`** represents the current line and the **`:`** symbol represents the current column._

``` vim
let g:airline_powerline_fonts = 1
let g:airline_section_x = 0
let g:airline_section_y = 0
let g:airline_section_error = 0
let g:airline_section_warning = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_section_z = airline#section#create_right(["%{line('.')} ☰ "," %{col('.')} :"])
```
