#/bin/sh

echo /////////////////////
echo     Install vimrc
echo /////////////////////
echo ;

cp ./vimrc ~/.vimrc

if [ -d ./templates ];then
	if [ -e ./templates ];then
		if [ ! -d ~/.vim/templates ]; then 
			mkdir ~/.vim/templates
		fi
		cp ./templates/*.template ~/.vim/templates
	fi
fi

echo //////////////////////////
echo "Install vim-plug? (y/n)"
echo //////////////////////////
echo ;
read answer
case $answer in
	[yY])
		echo /////////////////////
		echo     Download plug
		echo /////////////////////

		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

		echo /////////////////////////////////
		echo After install run vim and type :PlugInstall
		echo ///////////////////////////////// ;;
	[nN]*)
		echo ;
		echo Ok ;;
esac

echo //////////////////////////
echo "macos or linux (1/2)"
echo //////////////////////////
echo ;
read OS

echo //////////////////////////
echo "Install Vundle? (y/n)"
echo //////////////////////////
echo ;
read answer
case $answer in
	[yY])
		echo //////////////////////////////
		echo     Reinstall Vim for Vundle
		echo //////////////////////////////
		echo ;
		case $OS in
			[1])
				brew install vim
				brew install cmake ;;
			[2]*)
		esac

		echo /////////////////////
		echo     Download Vundle
		echo /////////////////////
		echo ;

		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

		echo /////////////////////
		echo     Update .vimrc
		echo /////////////////////
		echo ;

		echo "set nocompatible" >> ~/.vimrc
		echo "filetype off" >> ~/.vimrc
		echo "set rtp+=~/.vim.bundle/Vundle.vim" >> ~/.vimrc
		echo "call vundle#begin()" >> ~/.vimrc
		echo "Plugin 'VundleVim/Vundle.vim'" >> ~/.vimrc
		echo "Plugin 'Valloric/YouCompleteMe'" >> ~/.vimrc
		echo "call vundle#end()" >> ~/.vimrc
		echo "filetype plugin indent on" >> ~/.vimrc

		echo /////////////////////////////////
		echo After install run vim and type :PluginInstall
		echo ;
		echo exit Vim and go to ~/.vim/bundle/YouCompleteMe
		echo and run
		echo python3 install.py --all
		echo ///////////////////////////////// ;;
	[nN]*)
		echo ;
		echo Ok ;;
esac
		echo;
		echo Done ;
exit 0
