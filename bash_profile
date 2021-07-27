if [ -f ~/.profile.orig ]; then
	. ~/.profile.orig
fi

if [ -f ~/.bash_profile.orig ]; then
	. ~/.bash_profile.orig
fi

if [ -f ~/.bash_profile.local ]; then
	. ~/.bash_profile.local
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

