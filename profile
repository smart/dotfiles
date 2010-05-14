export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/web/tools/bin:$PATH
export MANPATH=/opt/local/man:$MANPATH

export DEV_SOCKET="/opt/local/var/run/mysql5/mysqld.sock"
export TEST_SOCKET="/opt/local/var/run/mysql5/mysqld.sock"

alias e="emacsclient -n"
alias di="svn di -x -w"
export SVN_EDITOR="emacsclient"

alias ls='ls -G'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

bind "set completion-ignore-case on"

source ~/.gilt_profile

alias p="/Volumes/Personal/Projects"
alias gpr='git pull'

alias co='git checkout'
alias gc='git checkout'

alias st='git status'
alias gs='git status'
alias gits='git status'
alias di='git diff'
alias gd='git diff'

alias ci='git commit'

source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
complete -o default -o nospace -F _git_checkout gco

export PS1="\[\033[38m\]\u:\[\033[01;36m\]\w \[\033[35m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
