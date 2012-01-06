# Set vim as the default editor
export EDITOR=vim

# Be productive
alias ..='cd ..'
alias ll='ls -alhG'
alias l='ll'
alias lt='ls -alhGrt'
alias h='sudo vim /etc/hosts'
alias ssh='ssh -C'
alias du='du -h'
alias df='df -h'
alias grep='grep --color'
alias rgrep='grep -nri'
alias htdocs='cd /Applications/MNPP/htdocs'
alias removesvn='find . -name .svn -print0 | xargs -0 rm -rf'
alias sc='screen -x'

# Drush
alias enthemer='drush en -y devel_themer'
alias disthemer='drush dis -y devel_themer'
alias ddl='drush dl'
alias ddls='drush dl --svnsync --svncommit'
alias dcc='drush cc all'
alias den='drush en -y'
alias dc='drush sqlq "update users set pass=md5('\''c'\'') where uid=1"'
alias dcp='drush sqlq "delete from cache_page"'

# Nice colors in terminal
export CLICOLOR=true
export LSCOLORS=ExFxCxDxBxegedabagacad

# Hello Messsage 
echo -e "Kernel Information: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime

# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    . /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
 
if [ -f /opt/local/etc/bash_completion ]; then
   . /opt/local/etc/bash_completion
fi

# Nice prompt
PS1='\[\033[0;35m\][\t] \[\033[32m\]\u\[\033[33m\]@\[\033[32m\]\h:\[\033[1;33m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\$ '
