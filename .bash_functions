function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}


numfiles() { 
    N="$(ls $1 | wc -l)"; 
    echo "$N files in $1";
}

# Changes into directory while also listing files
dp () {
  if [[ $1 -eq "1" || $# -eq "0" ]]; then
    PS1="\033[01;32m$\033[00m "
  elif [[ $1 -eq "2" ]]; then
    PS1="${debian_chroot:+($debian_chroot)}\w\033[01;32m$\033[00m "
  elif [[ $1 -eq "3" ]]; then
    PS1="\033[01;32m\u@\H:${debian_chroot:+($debian_chroot)}\w\033[01;32m$\033[00m "
  fi
  return;
}



#extract
extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2)   tar xjf $1        ;;
*.tar.gz)    tar xzf $1     ;;
*.bz2)       bunzip2 $1       ;;
*.rar)       rar x $1     ;;
*.gz)        gunzip $1     ;;
*.tar)       tar xf $1        ;;
*.tbz2)      tar xjf $1      ;;
*.tgz)       tar xzf $1       ;;
*.zip)       unzip $1     ;;
*.Z)         uncompress $1  ;;
*.7z)        7z x $1    ;;
*)           echo "'$1' cannot be extracted via extract()" ;;
esac
else
echo "'$1' is not a valid file"
fi
}


# taskwarrior function

view(){
task list;sleep 1;task summary;sleep 1;task ghistory; sleep 1; task calendar; task burndown.daily

}
