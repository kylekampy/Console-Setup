
export ZSH="/home/matthewp/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  git
  ubuntu
)

source $ZSH/oh-my-zsh.sh

export EDITOR="code-insiders"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /home/linuxbrew/.linuxbrew/etc/profile.d/z.sh ] && . /home/linuxbrew/.linuxbrew/etc/profile.d/z.sh
[ -f /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh ] && . /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh

# Go development
export GOPATH=$HOME/.go
export GOROOT=$(brew --prefix golang)/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.deno/bin
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Because we all have bad days
eval $(thefuck --alias)

alias sourceconfig="source ~/.zshrc"
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias cat="bat"
alias help="tldr"
alias nuget="mono /usr/local/bin/nuget.exe"
alias ping="prettyping --nolegend"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias top="sudo htop"

# add support for ctrl+o to open selected file in VS Code Insiders
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
