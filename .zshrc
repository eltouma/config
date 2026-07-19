# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"
export dev='/home/touma/code/elabdev'
export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# REPOSITORIES
alias elab='cd ~/code/elabdev/elabftw'
alias tom='cd ~/code/elabdev/tom-select'
alias .vi='vim ~/.vim/vimrc'
alias z='vim ~/.zshrc'
alias t='vim ~/.tmux.conf'
alias vimrc='vim ~/.vim/vimrc'
alias eln='cd ~/code/elabdev/eln.community'
alias ptg='cd ~/code/elabdev/partage'
alias url='cd ~/code/elabdev/url-shortener'

# CLI COMMANDS
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias h='history'
alias hg='history | grep'
alias vi='vim'
alias sz='source ~/.zshrc'
alias se='source .env'
alias lockmac='pmset displaysleepnow'
alias lock='dm-tool lock'
alias sing='rm -rf ~/.config/google-chrome/Singleton*'
alias wire='sudo wg-quick up /etc/wireguard/wg0.conf'

# GIT COMMANDS
alias mas='git checkout master'
alias gph='git pull'
alias gmm='git merge master'

# DOCKERS
alias docstop='docker stop $(docker ps -qa)'
alias docrm='docker rm $(docker ps -qa)'
alias docrmi='docker rm $(docker images -qa)'
alias prune='docker system prune -a'
alias dc='docker compose'
alias logs='docker logs -f --tail=100 '

# ELAB
alias elabc='docker exec -it elabftw'
alias wjs='docker exec -it elabftw yarn watchjs'
alias dwjs='docker exec -it elabftw yarn install && docker exec -it elabftw yarn watchjs'
alias dy='docker exec -it elabftw yarn install'
alias dbpop='docker exec -it elabftw bin/init db:populate src/tools/populate-config.yml.dist'
alias refresh='cd ~/code/elabdev && ./elabctl refresh && cd -'
alias restart='cd ~/code/elabdev && ./elabctl restart && cd -'
alias y='docker exec -it elabftw yarn'
alias cy='npm i --no-save --no-lockfile cypress cypress-terminal-report && ./node_modules/.bin/cypress open'
alias cystop='git checkout -- yarn.lock && rm -rf node_modules && yarn install'
alias nrb='npm run build && npm run build:js'
alias nr='npm run start'
alias mysql8='cd $dev && ./elabctl mysql'
alias cov='firefox ~/code/elabdev/elabftw/tests/_output/coverage/index.html'
alias skyt='SKIP_TWIGCS=1 SKIP_POPULATE=1 yarn ./tests/run.sh unit'
alias yt='./tests/run.sh unit'
alias dbup='docker exec -it elabftw bin/console db:update'

# PARTAGE
alias dbptg='docker build -t ghcr.io/deltablot/partage .'
alias drptg='docker run -p 8080:8080 -e SITE_URL=http://localhost:8080 --rm --name partage ghcr.io/deltablot/partage'

# ELN
alias cli='go build -o cli ./src/cmd && cd src && bash build.sh && cd .. && go run ./src'
alias pg='dc exec -it postgres psql -U eln -d eln'
alias gof='gofmt -w src/*.go'

# TMUX
alias tn='tmux new -s'
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tk='tmux kill-session -t'


if [ "$TERM" != "linux" ] ; then
    if [ -r ~/.ssh/id_ed25519 ]; then
        # don't ask again if the key is already loaded
        if ! ssh-add -l > /dev/null; then
            ssh-add ~/.ssh/id_ed25519
        fi
    fi
fi

# . "$HOME/.local/bin/env"

#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


