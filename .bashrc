# ~/.bashrc: executed by bash(1) for non-login shells.

#### Laden der systemweiten Voreinstellungen #############################
									##
if [ -r /usr/local/etc/.bashrc ]					##
then									##
   . /usr/local/etc/.bashrc						##
fi									##
									##
##########################################################################



#### Die folgenden Zeilen duerfen ########################################
#### nicht veraendert werden. ############################################
									##
umask 027								##
									##
#PATH="${PATH}:${HOME}/bin:."						##
PATH="${PATH}:."							##
export PATH								##
									##
#MANPATH="${MANPATH}:${HOME}/man"					##
#export MANPATH								##
									##
#LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${HOME}/lib"			##
#export LD_LIBRARY_PATH							##
									##
##########################################################################



#### Hier wird der Prompt definiert. #####################################
#### Bei Nichtgefallen aendern. ##########################################
									##
PS1="[\u@\h,\W] "	##DEFAULT
#PS1="\[\033[01;37m\]\$?\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi)$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\]\w\$\[\033[00m\]"
export PS1								##
									##
##########################################################################

MESA_EXTENSION_OVERRIDE="-GL_EXT_texture_sRGB_decode -GL_ARB_draw_elements_base_vertex -GL_ARB_map_buffer_range"
export MESA_EXTENSION_OVERRIDE
### Platz fuer private Definitionen ###

alias su='su -'
alias ls='ls --color=auto'
alias ll='ls -la'

alias ana='cd /home/andregro/ana-plus/'

stty -ixon -ixoff
