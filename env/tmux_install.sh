sudo apt-get install libevent-dev
mkdir -p tmp
cd tmp
rm -fr tmux
git clone git://git.code.sf.net/p/tmux/tmux-code
cd tmux-code
sh autogen.sh
./configure && make
sudo make install
