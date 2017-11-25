# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

if [ -f /usr/local/go/bin/go ]; then
	export GOPATH=${HOME}/Project/Go
	export GOBIN=${GOPATH}/bin
	export PATH=${PATH}:/usr/local/go/bin:${GOBIN}
fi

if [ -f ~/perl5/perlbrew/etc/bashrc ]; then
	source ~/perl5/perlbrew/etc/bashrc
fi

if [ -f `which perl` ]; then
	export PERL5LIB=${PERL5LIB}:${HOME}/Project/Perl
fi

if [ -d "/usr/local/pycharm-2017.2.2" ]; then
	export PATH="${PATH}:/usr/local/pycharm-2017.2.2/bin"
fi

if [ -d "/usr/local/GoLand" ]; then
	export PATH="${PATH}:/usr/local/GoLand/bin"
fi

if [ -d /usr/local/Komodo-IDE ]; then
         export PATH=${PATH}:/usr/local/Komodo-IDE
fi

if [ -d /usr/local/AlienFX ]; then
	export PATH=${PATH}:/usr/local/AlienFX/bin
fi

