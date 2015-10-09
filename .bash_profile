#Jeff's bash profile

# Various aliases
alias wyatt='ssh jeffl@wyatt.cs.vt.edu'
alias wyattx='ssh -X jeffl@wyatt.cs.vt.edu'
alias bioinfo='ssh jeffl@bioinformatics.cs.vt.edu'
alias bioinfox='ssh -X jeffl@bioinformatics.cs.vt.edu'
alias bioinfo2='ssh jeffl@cowcreamer.cs.vt.edu'
alias bioinfo2x='ssh -X jeffl@cowcreamer.cs.vt.edu'
alias bioinfo3='ssh jeffl@agatha.cs.vt.edu'
alias bioinfo3x='ssh -X jeffl@agatha.cs.vt.edu'
alias ems='vim ~/.emacs.d/init.el; scp ~/.emacs.d/init.el jeffl@wyatt.cs.vt.edu:~/.emacs.d/init.el'

# svn dir anc dommands 
function emsvn {
# How does svn know which files you want to add and which you don't?
	svn up; 
	emacs -nw $1;
	svn ci -m "updated $1"
}

# copy a file to my vm 
function vmscp {
	scp $1 jeffl@wyatt.cs.vt.edu:~/Downloads
	ssh jeffl@wyatt.cs.vt.edu "scp -P 3025 ~/Downloads/$1 jeffvm@127.0.0.1:~/Downloads; exit"
}

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
alias b='cd ..; ls'
alias bb='cd ../..; ls'
alias B="cd -; ls"
alias cls='clear; ls'
alias ll='ls -alh'
alias wl='wc -l *'
alias Q='exit'
alias v='vim -O'
alias V='vim -R'
alias em='emacs -nw'
alias t='tail -f'
function c() { cd "$1"; ls ;}

function create() { echo "alias $1=\"c $PWD\"" >> ~/jeff/.bash_profile; if [ -f ~/.bash_profile ]; then source ~/.bash_profile; fi;  if [ -f ~/.bashrc ]; then source ~/.bashrc; fi }

function gv() { git pull; sleep .5; vim "$1"; }

# templates
alias template='cp ~/jeff/Profile/template.py .; vim template.py'
alias edit_template='vim ~/jeff/Profile/template.py'
alias qsub_template="cp ~/jeff/Profile/qsub_template.sh .; vim qsub_template.sh"
alias edit_qsub_template="vim ~/jeff/Profile/qsub_template.sh"

# update this profile
alias p2='cd ~/jeff/Profile/'
alias b2='vim ~/jeff/Profile/.bash_profile; source ~/jeff/Profile/.bash_profile'
alias c2='vim ~/jeff/Profile/.bash_colors; source ~/jeff/Profile/.bash_colors'
alias s2='source ~/jeff/Profile/.bash_profile'

# github dir and commands
DEV_REPO="https://jlaw9@github.com/jlaw9/TRI_Dev.git"
TRI_REPO="https://jlaw9@github.com/jlaw9/TRI_Scripts.git"
LEGOS_REPO="https://jlaw9@github.com/dyermd/legos.git"
alias gp="cd ~/jeff/Profile; git pull; s2; cd -"
alias ga="cd ~/jeff/Profile; \
	git pull; \
	git commit -a -m 'update'; \
	git push --repo \"https://jlaw9@github.com/jlaw9/Profile.git\"; \
	git pull; cd -"
alias gita="git pull; \
	git commit -a -m 'update'; \
	git push; \
	git pull"

# --- git commands to remember ----
# git config --global credential.helper cache

# Directories
QC_DIR="/rawdata/legos/scripts/QC"

#Proton Servers:
Pluto="ionadmin@192.168.200.42"
alias pluto="ssh ionadmin@192.168.200.42"
Mercury="ionadmin@192.168.200.41"
alias mercury="ssh ionadmin@192.168.200.41"
Triton="ionadmin@192.168.200.131"
alias triton="ssh ionadmin@192.168.200.131"
Triton2="ionadmin@104.226.2.244"
alias triton2="ssh ionadmin@104.226.2.244"

#PGM servers
PGM="ionadmin@130.132.19.237"
alias pgm="ssh ionadmin@130.132.19.237"
Mars="ionadmin@192.168.200.43"
alias mars="ssh ionadmin@192.168.200.43"
alias compute2="ssh ionadmin@192.168.200.44"
alias compute3="ssh ionadmin@192.168.200.20"
Babylon="cbeckius@192.168.200.40"
alias babylon="ssh cbeckius@192.168.200.40"
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

