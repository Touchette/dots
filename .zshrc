#                     oooo                           
#                     `888                           
#   oooooooo   .oooo.o 888 .oo.   oooo d8b  .ooooo.  
#  d'""7d8P   d88(  "8 888P"Y88b  `888""8P d88' `"Y8 
#    .d8P'    `"Y88b.  888   888   888     888       
#  .d8P'  .P o.  )88b  888   888   888     888   .o8 
# d8888888P  8""888P' o888o o888o d888b    `Y8bod8P' 

PROMPT='%F{37}%n%f%F{160}@%f%F{166}%m%f %(?.%F{64}.%F{160}%? )%f%F{234}%2~%f > '

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |  Lines configured newuser-install   |
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=50000
setopt autocd
unsetopt beep nomatch notify
bindkey -e
zstyle :compinstall filename '/home/natalie/.zshrc'
autoload -Uz compinit
compinit

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# | Gimme highlighting for LS |
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# +-+-+-+-+-+-+-+-+-+-+
# |      Aliases      |
# +-+-+-+-+-+-+-+-+-+-+
# -- Misc --
alias rzsh='source ~/.zshrc'
alias c='clear'

# -- Package manager stuff --
alias p='sudo pacman'
alias update='yay -Syu --noconfirm'
alias cleanpkgs='sudo pacman -Rns $(pacman -Qtdq)'

# -- Mirrors --
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# -- For editing shit --
alias -g e='vim'
alias ezsh='vim ~/.zshrc'
alias etty='vim ~/.config/alacritty/alacritty.yml'
alias evim='vim ~/.vimrc'

# -- For directories --
alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# -- Colorize grep --
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# -- Make sure not to overwrite files --
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# -- Power controls --
alias shutdown='sudo shutdown'
alias reboot='sudo reboot'

# +-+-+-+-+-+-+-+-+-+
# | Sourcing things |
# +-+-+-+-+-+-+-+-+-+
source ~/.dotbare/dotbare.plugin.zsh

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |  Syntax highlighting needs to be at the end   |
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
source /home/natalie/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
