#Jeff's bash profile

set -o vi

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
function c() { cd "$1" && echo -e "${BLUE}${PWD}${NC}" && ls ;}

# update this profile
alias b2='vim ~/jeff/Profile/.bash_profile'
alias s2='source ~/jeff/Profile/.bash_profile'

# github dir and commands
TRI_REPO="https://jlaw9@github.com/jlaw9/TRI_Scripts.git"
LEGOS_REPO="https://jlaw9@github.com/dyermd/legos.git"
alias gp="git --git-dir=/home/ionadmin/jeff/Profile/.git pull && s2"
alias ga="git --git-dir=/home/ionadmin/jeff/Profile/.git add /home/ionadmin/jeff/Profile/.bash_profile && \
	git --git-dir=/home/ionadmin/jeff/Profile/.git add /home/ionadmin/jeff/Profile/.bash_colors && \
	git --git-dir=/home/ionadmin/jeff/Profile/.git commit -m 'update' && \
	git --git-dir=/home/ionadmin/jeff/Profile/.git push --repo \"https://jlaw9@github.com/jlaw9/Profile.git\" && \
	git --git-dir=/home/ionadmin/jeff/Profile/.git pull"
alias gpt="git --git-dir=/results/jeff/Profile/.git pull && s2"
alias gat="git --git-dir=/results/jeff/Profile/.git add /results/jeff/Profile/.bash_profile && \
	git --git-dir=/results/jeff/Profile/.git add /results/jeff/Profile/.bash_colors && \
	git --git-dir=/results/jeff/Profile/.git commit -m 'update' && \
	git --git-dir=/results/jeff/Profile/.git push --repo \"https://jlaw9@github.com/jlaw9/Profile.git\" && \
	git --git-dir=/results/jeff/Profile/.git pull"

# Directories
QCDIR="/rawdata/legos/scripts/QC"

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

alias lam="ssh ionadmin@192.168.200.214"
Lam="ionadmin@192.168.200.214"

