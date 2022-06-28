0. Использовать конфигурацию в init.lua

1. Установить менеджер плагинов Packer:
https://github.com/wbthomason/packer.nvim

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

3. Полезно иногда смотреть состояние nvim командой :checkstatus
Так же эта команда даёт полезные советы по устранению неполадок

Колекция плагинов:
https://github.com/rockerBOO/awesome-neovim
