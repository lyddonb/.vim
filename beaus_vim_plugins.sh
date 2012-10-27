#!/bin/bash

#hg clone https://bitbucket.org/sjl/dotfiles
echo Loading Bundles from Git
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add https://github.com/tpope/vim-surround.git bundle/surround
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/reinh/vim-makegreen bundle/makegreen
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
git submodule add https://github.com/scrooloose/syntastic.git bundle/syntastic
git submodule add https://github.com/Townk/vim-autoclose bundle/autoclose
git submodule add https://github.com/vim-scripts/Rainbow-Parenthesis bundle/rainbow
git submodule add https://github.com/sjl/threesome.vim bundle/threesome
git submodule add https://github.com/sjl/strftimedammit.vim bundle/strftimedammit
git submodule add https://github.com/kchmck/vim-coffee-script bundle/vim-coffee-script
git submodule add https://github.com/pangloss/vim-javascript bundle/vim-javascript
git submodule add https://github.com/kien/ctrlp.vim bundle/ctrlp.vim
git submodule add https://github.com/benmills/vimux bundle/vimux
git submodule add git://github.com/myusuf3/numbers.vim.git bundle/numbers
git submodule add git://github.com/klen/python-mode.git bundle/python-mode
echo Done loading bundles
git submodule init
git submodule update
echo Updating...
git submodule foreach git submodule init
git submodule foreach git submodule update
echo Complete
