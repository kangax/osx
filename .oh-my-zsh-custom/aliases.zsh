# git
alias gl='git log --oneline --decorate'
# compdef _git gl=git-log

alias gll='gl --abbrev-commit --all --graph --color'
# compdef _gt gll=git-log

alias glr='git pull --rebase'
# compdef _git glr=git-pull

alias gs='git status -sb'
# compdef _git gs=git-status

alias gd='git diff'
# compdef _git gd=git-diff

# rails 2
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias sd='script/destroy'

# rails 3
alias sr='script/rails'

# rails custom
alias sn='script/news --oneline'

# ps
alias pgrep='ps ax | grep -v grep | grep $1'

# sublime
alias sp='subl "${PWD##*/}.sublime-project"'
