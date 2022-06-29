0. Использовать конфигурацию в init.lua
Для удобства управления комбинациями клавиш в начало файла добавить:
```lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
```

1. Установить менеджер плагинов Packer:
https://github.com/wbthomason/packer.nvim

После добавления нового плагина в конфигурацию запускаем команду nvim
```
:PackerInstall
```

2. Автодополнение ввода через coq.nvim:
https://github.com/ms-jpq/coq_nvim

2.1 Настроить Language Server Protocol:
https://github.com/ms-jpq/coq_nvim#lsp

Установить https://github.com/neovim/nvim-lspconfig

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
2.2 По инструкции настроить для coq_nvim:
https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim

3. LUALINE
Установка https://github.com/nvim-lualine/lualine.nvim#packernvim
Активация с примером изменения темы. Добавить в init.lua:
```lua
require('lualine').setup({options = { theme = 'material' }})
```
4. TABLINE: BARBAR
Установка https://github.com/romgrk/barbar.nvim
Активация автоматически
Для удобной работы нужно сохранить в отдельный файл конфиг горячих клавиш,
после чего подключить его в init.lua
Конфиг: https://github.com/romgrk/barbar.nvim#lua
Например, сохраняем в:
```
~/.config/nvim/lua/barbar-config.lua
```

Подключаем в init.lua:
```lua
require'barbar-config'
```

5. NVIM TREE
https://github.com/kyazdani42/nvim-tree.lua
Для отображения/скрытия по <F3> добавить в init.lua:
```
map('n', '<F3>', '<Cmd>NvimTreeToggle<CR>', opts)
```


**Полезно иногда смотреть состояние nvim командой :checkstatus
Так же эта команда даёт полезные советы по устранению неполадок**

Колекция плагинов:
https://github.com/rockerBOO/awesome-neovim
