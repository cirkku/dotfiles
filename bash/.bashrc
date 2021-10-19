# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

force_color_prompt=yes
PS1='\[\e[0;38;5;123m\]\u\[\e[0m\]@\[\e[0;38;5;33m\]\h \[\e[0m\]\w \[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m\]: \[\e[0m\]' 

# Put your fun stuff here.
export PATH=$PATH:~/.local/bin
alias ls="exa"
alias cirno="ssh cirno@192.168.1.186"
alias upgrade="doas emerge --update --changed-use --with-bdeps=y @world"
alias update="doas emerge --sync"


#autostart X if on TTY1 
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
  fi
