# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  rust
)

# User configuration

export PATH=/usr/local/bin:$HOME/bin:$PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# # Brew bottle USTC mirror
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export PATH=$PATH:/usr/local/opt/redis-3.2.6/src
export PATH=$PATH:/usr/local/mysql/bin

alias proxychains4=/usr/local/opt/proxychains-ng/bin/proxychains4

# for "ValueError: unknown locale: UTF-8"
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# virtualenv for demlution project
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
source /usr/local/bin/virtualenvwrapper.sh

# add pg_config to PATH for psycopg2 installation
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin

# alias ctags="`brew --prefix`/bin/ctags"

# alias for thefuck
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# Proxy for Homebrew
# It will make an error for pip
# export ALL_PROXY=socks5://127.0.0.1:1080

# for libressl and openssl
export PATH="/usr/local/opt/libressl/bin:$PATH"

# for new version of emacs
alias emacs="/usr/local/Cellar/emacs/25.2/Emacs.app/Contents/MacOS/Emacs -nw"

# for golang workspace
# export GOROOT=/usr/local/go
export GOPATH=$HOME/gopath
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH:$GOROOT/bin
# $GOPATH/src : Where your Go projects / programs are located
# $GOPATH/pkg : contains every package objects
# $GOPATH/bin : The compiled binaries home

export PATH="$HOME/.cargo/bin:$PATH"

alias ag="ag --ignore \"tags\""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/usr/local/opt/sqlite/bin:$PATH"

function upall () {
	cd $HOME/.tmux && git pull && cd -
	upgrade_oh_my_zsh
	ALL_PROXY=socks5://127.0.0.1:1080 brew update
	ALL_PROXY=socks5://127.0.0.1:1080 brew upgrade
	ALL_PROXY=socks5://127.0.0.1:1080 brew cu -a
	brew cleanup
	brew cask cleanup
	# && brew cask outdated  # `brew cu` can be used now.
	printf 'Finish at ' && date
}

# function upall () {
# 	cd $HOME/.tmux && git pull && cd -
# 	upgrade_oh_my_zsh
# 	brew update && brew upgrade && brew cleanup && brew cask cleanup  # && brew cask outdated  # `brew cu` can be used now.
# 	brew cu -a
# }

function rebup () {
	git checkout master \
	&& git pull upstream master \
	&& git checkout - \
	&& git rebase master
}

funtion cpr () {
	git push --set-upstream origin $(git_current_branch)
	# hub pull-request -o -b "demlution/bazaar4:master"
	git remote get-url --push upstream | sed 's/^.*[\/:]\([^\/]*\)\/\([^\/]*\)\.git$/"\1\/\2:master"/g' | xargs hub pull-request -o -f -b
}
export PATH="/urs/local/opt/curl/bin:$PATH"


# for bazaar4 build
export SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass
export PHANTOMJS_CDNURL=https://npm.taobao.org/dist/phantomjs

# add plugin autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

function build_env () {
	/usr/local/bin/pg_ctl -D /usr/local/var/postgres start
	# /usr/local/opt/redis-3.2.6/src/redis-server >/dev/null 2>&1 < /dev/null &
        # docker run --name demlution-redis -p 6379:6379 -d redis redis-server
	docker start demlution-redis
	sudo /usr/local/bin/nginx -c /usr/local/etc/nginx/nginx.conf
}

function upgrade_nvim () {
	cd /opt
	sudo curl -LO --proxy 127.0.0.1:1087 https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
	sudo tar xzf ./nvim-macos.tar.gz
	sudo rm ./nvim-macos.tar.gz
	cd -
}
export PATH="/urs/local/opt/node@8/bin:$PATH"

export demlution_root=$HOME/mystuff/demlution

function update_dwapp_test () {
	mkdir -p $demlution_root/temp
	cp $demlution_root/dwapp_test/project.config.json $demlution_root/temp 2>/dev/null
	rm -rf $demlution_root/dwapp_test
	mkdir -p $demlution_root/dwapp_test
	mv $demlution_root/temp/project.config.json $demlution_root/dwapp_test 2>/dev/null
	cd $demlution_root/dwapp_test
	ls -t $HOME/Downloads/*.zip | head -1 | xargs unzip 1>/dev/null
	cd - 1>/dev/null
}

export PATH="/Users/jtr109/.cargo/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"

# for MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
