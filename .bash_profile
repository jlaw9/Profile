
# Setting PATH for EPD-7.3-2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/EPD64.framework/Versions/Current/bin:${PATH}"
export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS
export PATH=$PATH:~/Documents/Dev/scripts
export PATH=$PATH:~/Dropbox\ \(Personal\)/Dev/Learning/scripts
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export TERM=xterm-color

alias ll='ls -l'
alias lh='ls -l -h'
alias cls='clear && pwd && ls'
cdl(){ 
	cd $1 && ls 
}
alias mybash='vim ~/Dropbox\ \(Personal\)/Dev/.bash_profile'
alias sbash='source ~/.bash_profile'
alias ff='open /Applications/Firefox.app'
alias ever='open /Applications/Evernote.app'

Drop="~/Dropbox\ \(Personal\)"
alias b='cd .. && ls'
alias bb='cd ../.. && ls'
alias B='cd - && ls'
alias dev='cd ~/Dropbox\ \(Personal\)/Dev && ls'
alias template='cp ~/Dropbox\ \(Personal\)/Dev/Learning/Python/template.py . && vim template.py'
alias edit_template='vim ~/Dropbox\ \(Personal\)/Dev/Learning/Python/template.py'
fsl365="jman9@ssh.fsl.byu.edu:/fslhome/pickettb/BIO365/group_aligner"
alias 365='cd ~/Dropbox\ \(Personal\)/School/Fall_2014/CS_365/BWA_Group_Project && ls'
alias ros='mv ~/Downloads/rosalind* .'
alias scripts='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/scripts && ls'
alias legos='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/legos/scripts && ls'
alias p1='cd ~/Dropbox\ \(Personal\)/Dev/P1 && ls'
alias school='cd ~/Dropbox\ \(Personal\)/School && ls'
alias fall='cd ~/Dropbox\ \(Personal\)/School/Fall_2014 && ls'
alias winter='cd ~/Dropbox\ \(Personal\)/School/Winter_2015 && pwd && ls'
alias 478='cd ~/Dropbox\ \(Personal\)/School/Winter_2015/CS_478 && pwd && ls'
alias 465='cd ~/Dropbox\ \(Personal\)/School/Winter_2015/Bio_465 && pwd && ls'
alias 463='cd ~/Dropbox\ \(Personal\)/School/Winter_2015/Bio_463 && pwd && ls'
alias gen='cd ~/Dropbox\ \(Personal\)/School/Fall_2014/Genomics/Projects/Project_3 && ls'
alias gens='ssh genomics@lsb5133-1dm.byu.edu' 
alias 312='cd ~/Dropbox\ \(Personal\)/School/Fall_2014/CS_312/P4 && ls'
alias yale='cd ~/Dropbox\ \(Personal\)/School/Yale && ls'
alias bio='cd ~/Dropbox\ \(Personal\)/Dev/Bioinfo && ls'
alias est='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Einstein && ls'
alias wales='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Wales && ls'
alias dm='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Wales/Datamatrix && ls'
alias waless='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Wales/Scripts && ls'
alias radio='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Radiogenomics && ls'
alias radios='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Radiogenomics/Scripts && ls'
alias qc='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/legos/scripts/QC && ls'
alias qcpd='cd ~/Dropbox\ \(Rothberg\ Institute\)/Rothberg\ R\&D/Papers/Bifx\ QC/ && ls'
alias qcp='cd ~/Dropbox\ \(Personal\)/Dev/TRI/QC_Paper && ls'
alias pdf='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Wales/Scripts/QC/PDF && ls'
alias html='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Wales/Scripts/QC/HTML && ls'
alias amp='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/Wales/Scripts/Amplicon && ls'
alias tri='cd ~/Dropbox\ \(Personal\)/Dev/TRI && ls'
alias tris='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/TRI_Scripts && pwd && ls'
alias plugin='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Winter_2014/plugin/QCRunTransfer && pwd && ls'
alias push='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/TRI_Scripts/Push && pwd && ls'
alias mypnet='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Winter_2014/PNET && pwd && ls'
alias pnet='cd ~/Google\ Drive/PNET && pwd && ls'
alias datam='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Winter_2014/Data_Management && pwd && ls'
alias var='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/TRI_Scripts/Variants && ls'
alias sega='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/SEGA && ls'
alias soft='cd ~/Dropbox\ \(Personal\)/Dev/TRI/Summer_2014/software && ls'
alias cpy='cd ~/Documents/copy && ls'
alias kin='cd ~/Dropbox\ \(Personal\)/Dev/Bioinfo/Kinship && ls'
alias vtc='cd ~/Dropbox\ \(Personal\)/Dev/Bioinfo/VariantToolChest && ls'
alias vtct='cd ~/Dropbox\ \(Personal\)/Dev/Bioinfo/VariantToolChest/src/test/resources/test_data/ComplementTests && ls'
VTCT='~/Dropbox\ \(Personal\)/Dev/Bioinfo/VariantToolChest/src/test/resources/test_data/ComplementTests/'
alias vtct2='cd ~/Dropbox\ \(Personal\)/Dev/Bioinfo/VTC2/VariantToolChest/src/test/resources/test_data/ComplementTests && ls'
VTCT2='~/Dropbox\ \(Personal\)/Dev/Bioinfo/VTC2/VariantToolChest/src/test/resources/test_data/ComplementTests/'
VTC="/Users/jefflaw/Documents/Bioinfo/sample_data/vtc.jar"
VTCS="/Users/jefflaw/Documents/Bioinfo/Sample_data"
alias vtcs='cd /Users/jefflaw/Documents/Bioinfo/sample_data && ls'
alias becca='cd ~/Dropbox\ \(Personal\)/Jeff_Becca/Becca && ls'

alias qccc="scp $Triton:/rawdata/legos/scripts/QC/*.xlsx ."
alias copy='bash copy.sh'
alias CopyCode='bash CodeCopy.sh'
alias cols='bash listColors.sh'



lazy(){
	touch $1
	open $1
}
function fzip {
	zip -r $1 $1
}

FSL="jman9@ssh.fsl.byu.edu"
alias fsl='ssh -Y jman9@ssh.fsl.byu.edu'
alias cs='ssh -XY jman9@schizo.cs.byu.edu'

#Proton Servers:
PLUTO="ionadmin@192.168.200.42"
alias pluto="ssh ionadmin@192.168.200.42"
MERCURY="ionadmin@192.168.200.41"
alias mercury="sshpass -p 'ionadmin' ssh ionadmin@192.168.200.41"
TRITON="ionadmin@192.168.200.131"
#alias triton="sshpass -p "ionadmin" ssh ionadmin@192.168.200.131"
alias triton="ssh ionadmin@192.168.200.131"
TRITON2="ionadmin@12.32.211.40"
alias triton2="ssh ionadmin@12.32.211.40"


#PGM servers
PGM="ionadmin@130.132.19.237"
alias pgm="ssh ionadmin@130.132.19.237"
Mars="ionadmin@192.168.200.43"
alias mars="ssh ionadmin@192.168.200.43"
Brevity="ionadmin@192.168.200.45"
alias brevity="sshpass -p 'ionadmin' ssh ionadmin@192.168.200.45"
Sinister="ionadmin@192.168.200.46"
alias sinister="sshpass -p 'ionadmin' ssh ionadmin@192.168.200.46"
#sandbox
Robinhood="ionadmin@192.168.200.68"
alias robinhood="sshpass -p 'nsb286287!' ssh yilmazo@192.168.200.68"

alias lam="ssh ionadmin@192.168.200.214"
LAM="ionadmin@192.168.200.214"

QCDIR="/rawdata/legos/scripts/QC"

# renews and resets the DHCP release
alias renew="sudo ipconfig set en0 BOOTP && sudo ipconfig set en0 DHCP"

alias ='open /applications/iTunes.app'
alias Œ='sudo shutdown -h now'
set -o vi
