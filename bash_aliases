# ls - exa
alias l='exa'
alias ls='exa'
alias lt='exa -l --color=always -T -L1'
alias ltl='exa -l --color=always -T -L'
alias ll='exa -l --color=always'
alias la='exa -a'
alias lla='exa -al'

# Git diff
alias gd="git diff -- ':!package-lock.json' ':!yarn.lock'"
alias gpdns='git diff --name-only'
alias gdns='git --no-pager diff --name-only'
alias gdu='git ls-files --others --exclude-standard |xargs -n 1 -I {} git diff /dev/null {}'
alias gdt='git ls-files --others --exclude-standard'
alias gds='git diff --stat'
alias gdc='git diff --cached -- ":!package-lock.json" ":!yarn.lock"'
alias gdcs='git diff --cached --stat'
alias gdcns='git diff --cached --name-only'

alias gcl='git clone'
alias ga='git add'
alias gst='git status'
alias gc='git commit'
alias gp='git push'
alias gpt='git push --tags'
alias gpa='git push && git push --tags'

alias gl='git log'
alias glol='git log --pretty=oneline'

alias gsh='git stash'
alias gsl='git stash list'
alias gC='systemd-ask-password --no-output '\''Are you sure about this: '\'' && git checkout'
# alias 'git checkout'='systemd-ask-password --no-output '\''Are you sure about this: '\'' && git checkout'

# alias gC='git checkout'
alias gC="systemd-ask-password --no-output 'Are you sure about this: ' && git checkout"
alias gco='git checkout -'
alias gcd='git checkout devel'
alias gcm='git checkout master'
alias gcnd='git checkout master && git branch -D devel && git checkout -b devel'

alias gpr='git pull -r'
alias grm='git rebase master'
alias grc='git rebase --continue'
alias gpo='git push origin'
alias gpm='git push origin master'

alias gfa='git fetch --all'
alias gca='git commit -a --verbose'

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
alias dcc='docker ps -aq -f status=exited | xargs -r docker rm'
alias dic='docker images -f "dangling=true" -q | xargs -r docker rmi'
alias dcps='docker-compose ps'
alias dcup='docker-compose up -d'
alias dcdn='docker-compose down'

# pbcopy Linux
# sudo apt install xclip
alias pbcopy='xclip -sel clip'

# g++
alias gcc='g++ -Wall -Wextra -Werror '
alias g++='g++ -Wall -Wextra -Werror '

# Node
alias ns='npm start'
alias dns='DEBUG=* npm start'
alias no='nodemon'
alias dno='DEBUG=* nodemon'

# Nginx
alias nc='sudo nginx -t'
alias nr='sudo service nginx restart'

# Cloudant local
alias cl='docker run \
  --detach \
  --volume cloudant:/srv \
  --name cloudant-bp \
  --publish 9003:80 \
  --hostname cloudant.bp \
  ibmcom/cloudant-developer'

alias spark='view /opt/spark/README.md'

alias clearAuthCache='sudo rm -rf /var/cache/nginx/auth/*'

alias nrl='npm run local'
alias nrd='npm run dev'

alias replicator='/home/bp/workspace/backend/scripts/process/replicator.sh'

# cd
alias cdm='cd /home/bp/workspace/backend/monolith/'
alias cdz='cd /home/bp/workspace/intermediate/zonarAPI/'
alias cdd='cd /home/bp/workspace/legacy/dashboard/'
alias cdi='cd /home/bp/workspace/intermediate/'
alias cdl='cd /home/bp/workspace/legacy/lmdash/'
