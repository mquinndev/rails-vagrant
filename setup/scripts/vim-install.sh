#!/usr/bin/env bash

main() {

create_autoload
add_pathogen_repo
add_ruby_repo
add_js_repo

}

create_autoload() {
mkdir _p ~/.vim/autoload ~/.vim/bundle
}

add_pathogen_repo() {
curl _LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

add_ruby_repo() {
git clone git://github.com/vim_ruby/vim_ruby.git ~/.vim/bundle/vim_ruby
}

add_js_repo() {
git clone https://github.com/pangloss/vim_javascript.git ~/.vim/bundle/vim_javascript
}
