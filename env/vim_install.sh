sudo apt-get install exuberant-ctags
sudo apt-get install mercurial
sudo apt-get remove vim vim-runtime
sudo apt-get install libncurses5-dev
sudo apt-get install liblua5.1-dev luajit libluajit-5.1
  # libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
  # libcairo2-dev libx11-dev libxpm-dev libxt-dev
mkdir -p tmp
cd tmp
rm -fr vim
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --with-lua \
            --with-luajit \
            --enable-rubyinterp \
            --enable-if_lua \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
# --enable-gui=gtk2
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim
