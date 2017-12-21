let $VIM = '/home/kovalenkoa/.config/nvim'
let $LANG = $VIM.'/lang'

"Starts describe plugins list
call plug#begin('~/.vim/plugged')

let $PLUG = $VIM.'/plug_list.vim'

if filereadable($PLUG)
    source $PLUG
else
    echo 'Could not open file: '.$PLUG
endif


" Initialize plugin system
call plug#end()

let $UI = $VIM.'/ui.vim'
let $COMMON = $VIM.'/common.vim'
let $SYNTASTIC = $VIM.'/syntastic.vim'

let $PHP = $LANG.'/php.vim'

source $UI
source $SYNTASTIC
source $PHP
source $COMMON
