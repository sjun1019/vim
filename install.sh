#/bin/sh

echo /////////////////////
echo     Install vimrc
echo /////////////////////

cp ./vimrc ~/.vimrc

echo /////////////////////
echo     Download plug
echo /////////////////////

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo /////////////////////////////////
echo Now run vim and type :PlugInstall
echo /////////////////////////////////
