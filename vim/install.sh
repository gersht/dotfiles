#!/bin/bash

source `dirname $0`/../config.sh

install_on_mac() {
  brew_install macvim --with-cscope --override-system-vim --with-lua
  create_vim_bin_symlink

  brew_install ctags
  brew_install the_silver_searcher # ag
  brew_install tidy
}

create_vim_bin_symlink() {
  latest_vim=`/bin/ls -1 -d /usr/local/Cellar/macvim/7.* | sort -n | tail -1`
  symlink $latest_vim/bin/vim /usr/bin/vim
}

install_on_linux() {
  apt_install vim-gnome exuberant-ctags tidy

  if [ "$HAS_GUI" = "yes" ]; then
    bullet "Installing Powerline fonts\n"
    bash "$DOTF/vim/powerline-fonts/install.sh"
  fi

  #add_ppa tomaz-muraus/the-silver-searcher
  #apt_install the-silver-searcher
  install_deb the-silver-searcher http://swiftsignal.com/packages/ubuntu/quantal/the-silver-searcher_0.14-1_amd64.deb
}

install_symlinks() {
  symlink "$DOTF/vim/vimrc" ~/.vimrc
  symlink "$DOTF/vim" ~/.vim
  symlink "$DOTF/vim/pylintrc" ~/.pylintrc
}

remove_vundle() {
  if [ -e $DOTF/vim/bundle/vundle ]; then
    bullet "Removing vundle"
    cd $DOTF/vim/bundle
    rm -rf vundle
    success "done"
  fi
}

install_neo_bundle() {
  cd ~/.vim
  git_clone http://github.com/Shougo/neobundle.vim bundle/neobundle.vim
  bullet "Running NeoBundleInstall... "
  vim +NeoBundleInstall +qall
  success "done"
}

compile_youcompleteme() {
  bullet "Compiling YouCompleteMe... "
  if [[ -e "$DOTF/vim/bundle/YouCompleteMe/python/ycm_core.so" ]]; then
    info 'Already compiled.'
  else
    (
      cd $DOTF/vim/bundle/YouCompleteMe
      ./install.sh
    )
  fi
}

#compile_vimproc() {
  #bullet "Compiling vimproc... "
  #cd $DOTF/vim/bundle/vimproc

  #os="unix"
  #if [[ "$OS" == "mac" ]]; then os="mac"; fi

  #if [[ -e autoload/vimproc_${os}.so ]]; then
    #info 'Already compiled.'
  #else
    #make -f make_${os}.mak
    #if [ $? -eq 0 ]; then
      #success "done"
    #else
      #error "failed"
      #exit 1
    #fi
  #fi
#}

install_utils() {
  npm_install vimspec
  npm_install coffeelint
  npm_install jshint
  npm_install jsonlint
  npm_install marked
  python_install pylint
}

header "Vim"
if [ "$1" == "symlinks" ]; then
  install_symlinks
else
  if [ "`uname -s`" == "Darwin" ]; then
    install_on_mac
  else
    install_on_linux
  fi

  install_symlinks
  remove_vundle
  install_neo_bundle
  compile_youcompleteme
  #compile_vimproc
  install_utils
fi
