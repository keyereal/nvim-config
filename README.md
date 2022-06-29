# Минимальные настройки NeoVim для работы с кодом на python3

**Содержимое репозитория можно склонировать в директорию с конфигом nvim**

Обычно это
```
~/.config/nvim/
```

**Предполагается использовать конфигурацию в init.lua**

Для удобства управления комбинациями клавиш в начало файла добавить:
```lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
```

### 1. Установить менеджер плагинов [Packer](https://github.com/wbthomason/packer.nvim):

- После добавления нового плагина в конфигурацию запускаем команду nvim
```vim
:PackerInstall
```

### 2. Автодополнение ввода через [coq.nvim](https://github.com/ms-jpq/coq_nvim)

- Настроить Language [Server Protocol](https://github.com/ms-jpq/coq_nvim#lsp)

- Установить [LSP Config](https://github.com/neovim/nvim-lspconfig)

Для работы Автодополнения в python:
В Ubuntu 20.04 необходимо ставить свежую версию node в виде snap пакета

Например:
```
# snap install node --classic --channel=16
```

Иначе будут ошибки и не запустится pyright
```
# npm install --global pyright
```
- По [инструкции](https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim) настроить LSP для coq_nvim

### 3. LUALINE
[Установка](https://github.com/nvim-lualine/lualine.nvim#packernvim)

Активация с примером изменения темы. Добавить в init.lua:
```lua
require('lualine').setup({options = { theme = 'material' }})
```
### 4. TABLINE: BARBAR
[Установка](https://github.com/romgrk/barbar.nvim)

Активация происходит автоматически

Для удобной работы нужно сохранить в отдельный файл конфиг горячих клавиш,
после чего подключить его в init.lua
[Конфигурация](https://github.com/romgrk/barbar.nvim#lua)

Например, сохраняем конфигурацию в:
```
~/.config/nvim/lua/barbar-config.lua
```

Подключаем в init.lua:
```lua
require'barbar-config'
```

### 5. NVIM TREE
[Установка](https://github.com/kyazdani42/nvim-tree.lua)

Для отображения/скрытия по клавише F3 добавить в init.lua:
```vim
map('n', '<F3>', '<Cmd>NvimTreeToggle<CR>', opts)
```


**Полезно иногда смотреть состояние nvim командой :checkstatus
Так же эта команда даёт полезные советы по устранению неполадок**

### [Колекция плагинов](https://github.com/rockerBOO/awesome-neovim)

### [Статья на Хабре](https://habr.com/ru/post/586808/) по переписыванию конфига с init.vim на init.lua

**Итоговый внешний вид ([для полноценного отображения иконок необходимо доустанавливать шрифты](https://github.com/kyazdani42/nvim-web-devicons))**

_Вариант со светлой темой и файловым менеджером_
![Вариант со светлой темой и файловым менеджером](https://user-images.githubusercontent.com/81958676/176488041-f32970e6-16fe-4a98-9d37-9e4c1a14213e.png)

_COQ_NVIM Python3 LSP_
![COQ_NVIM Python3 LSP](https://user-images.githubusercontent.com/81958676/176490590-0f5cde16-25e6-4e41-8152-0467ee78ff53.png)
