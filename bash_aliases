# ls - exa
alias l='exa'
alias ls='exa'
alias lt='exa -l --color=always -T -L1'
alias ltl='exa -l --color=always -T -L'
alias ll='exa -l --color=always'
alias la='exa -a'
alias lla='exa -al'

# Git diff
alias gd='git diff'
alias gpdns='git diff --name-only'
alias gdns='git --no-pager diff --name-only'
alias gdu='git ls-files --others --exclude-standard |xargs -n 1 -I {} git diff /dev/null {}'
alias gdt='git ls-files --others --exclude-standard'
alias gds='git diff --stat'
alias gdc='git diff --cached'
alias gdcs='git diff --cached --stat'
alias gdcns='git diff --cached --name-only'

alias gcl='git clone'
alias ga='git add'
alias gst='git status'
alias gc='git commit'


alias gl='git log'
alias glol='git log --pretty=oneline'

alias gsh='git stash'
alias gsl='git stash list'
alias gC='systemd-ask-password --no-output '\''Are you sure about this: '\'' && git checkout'
# alias 'git checkout'='systemd-ask-password --no-output '\''Are you sure about this: '\'' && git checkout'

# alias gC='git checkout'
alias gco='git checkout -'

alias gpr='git pull -r'
alias grm='git rebase master'
alias gpm='git push origin master'

# alias localdb='mysql --defaults-extra-file=/home/bp/.sql/local'
# alias brightness="sudo tee /sys/class/backlight/intel_backlight/brightness <<<"
alias rm="systemd-ask-password --no-output 'Are you sure about this: ' && rm"

alias vi="vim"

# alias ldb='mysql --defaults-extra-file=/home/bp/.office/sql/local local_db'

# clear screen
alias ':wq'='clear'

# Gzip size
alias gGzipSize='gzip -9 -c |wc -c | numfmt --to=iec-i --suffix=B --padding=10' # USAGE: cat expenses |xargs bash -ic gGzipSize
alias gSize='wc -c | numfmt --to=iec-i --suffix=B --padding=10'

# Daily Log
alias dailylog='vim ~/.dailylog/logDailyTillSideProjectIsFinished'
alias readup='vim ~/.dailylog/toRead'
alias things='vim ~/.dailylog/thingsToDo'
alias issues='vim ~/.dailylog/issuesToResolve'
alias articles='vim ~/.dailylog/articles'

# Docker
alias dps='docker ps -a'
alias dim='docker images -a'
alias dcc='docker ps -aq -f status=exited | xargs docker rm'
alias dic='docker images -f "dangling=true" -q | xargs docker rmi'

# pbcopy Linux
# sudo apt install xclip
alias pbcopy='xclip -sel clip'

alias ns='npm start'

# g++
alias gcc='g++ -Wall -Wextra -Werror '
alias g++='g++ -Wall -Wextra -Werror '
