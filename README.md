# Vim-sahl
> A simple vim plugin that adds highlighting and indentation as well as automatic compilation on save

### Installation
In this repository, you will find two files, one in the syntax folder which can be put into `~/.vim/syntax/sahl.vim` and another file in the sahl folder which can be placed in `~/.vim/sahl/sahl.vim`

You can add this plugin to your readme by simply adding `source ~/.vim/sahl/sahl.vim` and if you placed the syntax file in the correct place, that will automatically be applied to every sahl file you edit.

You can clone the repository directly into your vim folder by simply running the command `git clone https://github.com/curlpipe/vim-sahl ~/.vim/` and the plugin will be ready to be added to your .vimrc file

### Disabling automatic compilation
In the `sahl.vim` file that is located in `~/.vim/sahl/sahl.vim` you can disable the automatic compilation that occurs in the background by simply commenting out the line `au BufWritePost *.sahl silent exec "!sahl -s <afile>"` and when you save your sahl files they will no longer be converted to html automatically.

### Changing the command to compile
To change the command to compile with sahl, e.g. you don't have the binary or have a specific path where the binary is located, you can edit the line `au BufWritePost *.sahl silent exec "!sahl -s <afile>"` and change the command after the `!` symbol. If you don't have the binary you can simply change the line to `au BufWritePost *.sahl silent exec "!ruby /path/to/sahl.rb -s <afile>"` and when you reload your vim the changes will be applied.