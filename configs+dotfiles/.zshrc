# Created by newuser for 4.3.17

autoload -U colors && colors

#PROMPT="%{$fg[white]%}%n %{$fg[magenta]%}[%d]
# >>$reset_color%} "
#$fg[green]%}>implying
PROMPT="%{$fg[magenta]%}~>%{$fg[red,bold]%}> "
RPROMPT="%{$reset_color%}"

setopt AUTO_CD
setopt CORRECT
autoload -U compinit
compinit

#[[ $TERM != "screen" ]] && exec tmux

alias matrix='clear ; cmatrix -bs -C red'
alias restartcomp='sudo shutdown -r 0'
alias off='sudo shutdown -h 0'
alias gay='toilet --gay -f mono9'
alias gayb='gay -F border:gay'
alias metal='toilet --metal -f mono9'
alias metalb='metal -F border:metal'
alias twitter='cd ~/; ./ttytter -wrap -colourme=CYAN -colourdm=RED -colourreply=RED -coloursearch=MAGENTA -colourwarn=MAGENTA'
alias nightly='~/nightly; ./firefox'
alias gayt='toilet --gay -f term'
alias metalt='toilet --metal -f term'
alias destred='~/scrots; clear; metalt -F border:gay "                      ~ no time for love ~                     "; screenfetch'
alias destred2='clear; tanks; echo ; screenfetch; scrots; echo ; gayt "                              install plebian"; echo '
alias pipes='bash ~/scripts/pipes'
alias tanks='~/scripts/colortests; ./tanks; ~'
alias apu='sudo aptitude update; sudo aptitude upgrade'
alias aps='aptitude search'
alias api='sudo aptitude install'
alias appu='sudo aptitude purge'
alias ags='apt-get source'
alias dbo='deborphan'
alias dboa='deborphan --guess-all'
alias gif='byzanz-record --delay=5 --duration=9 abc.gif'
alias xyz='scrot -cd5 zyx.png; pngcrush zyx.png xyz.png; rm -rf zyx.png'
alias abxy='scrot -cd5 yxba.png; pngcrush yxba.png abxy.png; rm -rf yxba.png'
alias b1000="su -c 'echo 1000 > /sys/class/backlight/intel_backlight/brightness'"
alias b2500="su -c 'echo 2500 > /sys/class/backlight/intel_backlight/brightness'"
alias sxyz="clear;screenfetch;xyz"
alias sabxy="clear;screenfetch;abxy"
alias dpi="sudo dpkg -i"
alias dpr="sudo dpkg-reconfigure"
alias ab='cd ~/scrots;clear;scrot -d3 a.png;destred;scrot -cd4 b.png;convert +append a.png b.png ab.png;rm -rf a.png; rm -rf b.png'
alias squares='cd ~/scripts/colortests;./squares'
alias rice='clear;squares;gayt "                      WE RICE NOW SON";echo ;screenfetch;cd ~/scrots'
alias du='cdu -d ch'
alias gentoo='su -c "chroot /home/diavorian/gentoo /bin/zsh"'
alias mgentoo='su -c "mount --bind /dev/pts /home/diavorian/gentoo/dev/pts;mount --bind /dev /home/diavorian/gentoo/dev;mount --bind /proc /home/diavorian/gentoo/proc;mount --bind /tmp /home/diavorian/gentoo/tmp;mount --bind /sys /home/diavorian/gentoo/sys"'
alias ungentoo='su -c "umount /home/diavorian/gentoo/dev/pts;umount /home/diavorian/gentoo/dev;umount /home/diavorian/gentoo/proc;umount /home/diavorian/gentoo/sys;umount /home/diavorian/gentoo/tmp"'
alias pk='sudo pkill'
