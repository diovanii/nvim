# My [Neovim](https://neovim.io/) config file 

* ##### [Installation](#wrench-installation)
* ##### [Plugins](#electric_plug-plugins)
* ##### [Custom airline](#art-custom-airline)

<br>
<br>

## :wrench: Installation
Clone this repo to your `.config` folder, which on my case is in `$HOME/.config`

```bash
git clone https://github.com/diovanii/nvim $HOME/.config
```

<br>

## :electric_plug: Plugins
* **[coc.nvim](https://github.com/neoclide/coc.nvim)**
* **[gruvbox](https://github.com/morhetz/gruvbox)**
* **[markdown-preview](https://github.com/iamcco/markdown-preview.nvim)**
* **[ultisnips](https://github.com/sirver/UltiSnips)**
* **[vim-airline](https://github.com/vim-airline/vim-airline)**
* **[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)**
* **[vim-devicons](https://github.com/ryanoasis/vim-devicons)**
* **[vim-fugitive](https://github.com/tpope/vim-fugitive)**
* **[vim-javascript](https://github.com/pangloss/vim-javascript)**
* **[vim-shex](https://github.com/diovanii/vim-shex)**
* **[vim-surround](https://github.com/tpope/vim-surround)**

<br>

## :art: Custom [Airline](https://github.com/vim-airline/vim-airline)

> **To set up this custom Airline you will need:**
* **[powerline fonts](https://github.com/powerline/fonts#installation)**
* **[vim-devicons](https://github.com/ryanoasis/vim-devicons#installation)**

<br>

**Top bar**

![Custom top bar preview](https://i.postimg.cc/MKB3v24m/tabs-preview.png)

<br>

**Bottom bar**

![Custom Airline preview](https://i.postimg.cc/dQpSstW0/airline-preview.png)

_The **`☰`** represents the current line and the **`:`** symbol represents the current column._

``` vim
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#exclude_preview = 0
let airline#extensions#tabline#disable_refresh = 0
let g:airline#extensions#tabline#buffers_label = ""
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_section_x = 0
let g:airline_section_y = 0
let g:airline_section_error = 0
let g:airline_section_warning = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_section_z = airline#section#create_right(["%{line('.')} ☰ "," %{col('.')} :"])
```


<br>
<br>
<br>
<br>
<br>

###### This repository is under the [MIT License](https://opensource.org/licenses/MIT) :page_with_curl:
