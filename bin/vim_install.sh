#!/usr/bin/env bash

main() {

create_autoload
add_pathogen_repo
add_ruby_repo
add_js_repo

}

create_autoload() {
mkdir -p ~/.vim/autoload ~/.vim/bundle
}

add_pathogen_repo() {
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

add_ruby_repo() {
git clone git://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
}

add_js_repo() {
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
}
