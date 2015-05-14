#Jeff's bash profile

set -o vi
shopt -s histappend
HISTFILESIZE=1000000
HISTSIZE=1000000
PROMPT_COMMAND='history -a'

# gives the current ip address
alias iam="/sbin/ifconfig | grep 'inet addr:' | grep -v "127.0.0.1" | cut -d: -f2 | head -n 1 | cut -d' ' -f1"
if [ -f ~/jeff/.bash_profile ]; then
	source ~/jeff/.bash_profile
fi
# source the colors
source ~/jeff/Profile/.bash_colors

# quick commands
alias b='cd .. && ls'
alias bb='cd ../.. && ls'
alias B="cd - && ls"
alias cls='clear && pwd && ls'
alias ll='ls -alh'
alias wl='wc -l *'
alias Q='exit'
alias v='vim -O'
alias t='tail -f'
function c() { cd "$1" && ls ;}

function create() { echo "alias $1=\"c $PWD\"" >> ~/jeff/.bash_profile; source ~/.bash_profile; }

# templates
alias template='cp ~/jeff/Profile/template.py . && vim template.py'
alias edit_template='vim ~/jeff/Profile/template.py'
alias qsub_template="cp ~/jeff/Profile/qsub_template.sh . && vim qsub_template.sh"
alias edit_qsub_template="vim ~/jeff/Profile/qsub_template.sh"

# update this profile
alias p2='cd ~/jeff/Profile/'
alias b2='vim ~/jeff/Profile/.bash_profile && source ~/jeff/Profile/.bash_profile'
alias c2='vim ~/jeff/Profile/.bash_colors && source ~/jeff/Profile/.bash_colors'
alias s2='source ~/jeff/Profile/.bash_profile'

# github dir and commands
TRI_REPO="https://jlaw9@github.com/jlaw9/TRI_Scripts.git"
LEGOS_REPO="https://jlaw9@github.com/dyermd/legos.git"
alias gp="cd ~/jeff/Profile && git pull && s2 && cd -"
alias gpa="cd ~/jeff/Profile && \
	git pull && \
	git commit -a -m 'update' && \
	git push --repo \"https://jlaw9@github.com/jlaw9/Profile.git\" && \
	git pull && cd -"
alias gita="git pull && \
	git commit -a -m 'update' && \
	git push && \
	git pull"

# Directories
QC_DIR="/rawdata/legos/scripts/QC"

#Proton Servers:
Pluto="ionadmin@192.168.200.42"
alias pluto="ssh ionadmin@192.168.200.42"
Mercury="ionadmin@192.168.200.41"
alias mercury="ssh ionadmin@192.168.200.41"
Triton="ionadmin@192.168.200.131"
alias triton="ssh ionadmin@192.168.200.131"
Triton2="ionadmin@12.32.211.40"
alias triton2="ssh ionadmin@12.32.211.40"

#PGM servers
PGM="ionadmin@130.132.19.237"
alias pgm="ssh ionadmin@130.132.19.237"
Mars="ionadmin@192.168.200.43"
alias mars="ssh ionadmin@192.168.200.43"
Brevity="ionadmin@192.168.200.45"
alias brevity="ssh ionadmin@192.168.200.45"
Sinister="ionadmin@192.168.200.46"
alias sinister="ssh ionadmin@192.168.200.46"
#sandbox
Robinhood="ionadmin@192.168.200.68"
alias robinhood="ssh ionadmin@192.168.200.68"

alias lam="ssh ionadmin@192.168.200.183"
Lam="ionadmin@192.168.200.183"
#alias lam="ssh ionadmin@192.168.200.214"
#Lam="ionadmin@192.168.200.214"

