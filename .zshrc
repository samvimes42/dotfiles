# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="mh"
DEFAULT_USER='cvc'
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load ram)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs newline dir_writable os_icon)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=11
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='turquoise2'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='grey19'
POWERLEVEL9K_STATUS_OK_BACKGROUND='grey19'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='grey19'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='steelblue1'
POWERLEVEL9K_DIR_HOME_BACKGROUND='117'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='117'
POWERLEVEL9K_OS_ICON_BACKGROUND='grey19'
POWERLEVEL9K_OS_ICON_FOREGROUND='turquoise2'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='229'
POWERLEVEL9K_RAM_BACKGROUND='037'

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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

bindkey -v

ZSH_ALIAS_FINDER_AUTOMATIC=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  ubuntu zsh_reload colored-man-pages thefuck ripgrep alias-finder command-not-found fasd fzf cloudfoundry frontend-search git tig httpie urltools extract catimg docker encode64 git-flow mvn sudo systemd yarn kubectl zsh-autosuggestions dircycle zsh-syntax-highlighting history-substring-search 
)

eval "$(fasd --init auto)"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/localExports.sh
source $(dirname $(gem which colorls))/tab_complete.sh
source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use --lts --silent

export VISUAL="nvim"
export EDITOR="$VISUAL"

export SQLCL_HOME=~/programs/sqlcl

export PATH=$PATH:$SQLCL_HOME/bin

export HISTORY_SUBSTRING_SEARCH_FUZZY=true

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '\e.' insert-last-word
bindkey '^ ' autosuggest-accept

alias vi="nvim"
alias sr="source ~/.zshrc"
alias er="vi ~/.zshrc"
alias exr="vi ~/.Xresources"
alias sxr="xrdb -merge ~/.Xresources"
alias rip="kill -9"
alias rmrf="rm -rf"

alias l="colorls --sd -A"
alias ll="colorls --sd -lAh"
alias vo='f -e vi'

alias cdp="cd ~/projects/gitProjects/"

alias mci="mvn clean install"
alias mcii="mvn clean install -P BUILD"
alias mr="./run-service.sh"
alias mrit="./run-integration-tests.sh"

alias gf="git fetch"
alias gg="git gui"
alias gco="git checkout" 
alias gcot="git checkout -t" 
alias gh='git log --pretty=format:"%C(auto)%h %ad | %s%d %C(red)[%an]" --graph --date=short'
alias glod='git pull origin develop'
alias glom='git pull origin master'

alias py="python3"

alias use-kubeconfig-k3s="export KUBECONFIG=/etc/rancher/k3s/k3s.yaml"
alias use-kubeconfig-ccms-cluster="export KUBECONFIG=~/.kube/config"

alias ukl="use-kubeconfig-k3s"
alias ukc="use-kubeconfig-ccms-cluster"

# custom fns
cd() {
    builtin cd "$@";
    l;
}

baleet() {
    rm -rf "$@";
    echo "Baleeted!";
    colorls --sd -A
}

kp() {
### PROCESS
# mnemonic: [K]ill [P]rocess
# show output of "ps -ef", use [tab] to select one or multiple entries
 press [enter] to kill selected processes and go back to the process list.
# or press [escape] to go back to the process list. Press [escape] twice to exit completely.

    local pid=$(ps -ef | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[kill:process]'" | awk '{print $2}')

    if [ "x$pid" != "x" ]
    then
      echo $pid | xargs kill -${1:-9}
      kp
    fi
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/cvc/.sdkman"
#[[ -s "/home/cvc/.sdkman/bin/sdkman-init.sh" ]] && source "/home/cvc/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
