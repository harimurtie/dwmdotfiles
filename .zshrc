# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/damez/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
 alias q="~ && clear"
 alias os=" { lsb_release -sirc; uname -a  } | nms -a"
 alias manjaro="figlet -f ~/Documents/bangunapp/figlet-fonts/3d.flf btw\  i\  use\   manjaro"
 alias pp="pwd"
 alias hello="sys && wttr && anal"
 alias mt="neomutt"
 alias xwin="xwininfo"
 alias boot="icy && uname -r && systemd-analyze"
 alias goo="googler"
 alias v="vim"
 alias pen="figlet -f ~/Documents/bangunapp/figlet-fonts/3d.flf"
 alias btw="slida 'btw i use manjaro' | lolcat"
 alias 17an="slida 'M E R D E K A !!' | lolcat"
 alias fun="slida 'linux  is  fun' | lolcat"
 alias sv="sudo vim"
 alias la="ls -a"
 alias yd="youtube-dl --write-auto-sub --youtube-skip-dash-manifest -f 18"
 alias yf="youtube-dl --write-auto-sub --youtube-skip-dash-manifest"
 alias yl="youtube-dl -f low"
 alias yp="youtube-dl -f 240p"
 alias yt="youtube-dl --write-auto-sub --youtube-skip-dash-manifest -f hls-832"
 alias qb="qutebrowser"
 alias ym="youtube-dl --youtube-skip-dash-manifest -x --audio-format m4a --audio-quality 0 --embed-thumbnail -k"
 alias asu="screenfetch -E -D archlinux -w"
 alias hack="hackersascii"
 alias lla="exa -al"
 alias ll="exa -l"
 alias wlist="nmcli device wifi list"
 alias wconn="nmcli connection show"
 alias x="exit"
 alias f="fff"
 alias ra="ranger"
 alias m="mounts"
 alias um="unmount"
 alias qq="q && boot"
 alias cek="sudo pacman -Syyuu"
 alias shot="scrot -c -d 10"
 alias konek="nmtui"
 alias musik="mpd && ncmpcpp"
 alias mix="ncpamixer"
 alias mm="sudo ~/Documents/scripts/ps_mem.py"
 alias ff="free -h"
 alias nf="neofetch"
 alias sc="screenfetch -w"
 alias swap="cat /proc/sys/vm/swappiness"
 alias cpol="vim ~/.config/polybar/config"
 alias cdo="vim ~/.config/polybar/configdock"
 alias sapu="sapu"
 alias mupen="mupen64plus"
 alias baca="fltrdr"
 alias benchssd="dd if=./largefile of=/dev/null bs=4k && dd if=/dev/zero of=./largefile bs=4k count=1024"
 alias host="bunnyfetch"
 alias bf="pc"
 alias beras="bunnyfetch  && curl -L git.io/rice"
 alias note="notetaking"
 alias ci3="vim ~/.config/i3/config"
 alias cz="vim ~/.zshrc"
 alias sz="source ~/.zshrc"
 alias hg="history | grep"
 alias lg="ls | grep"
 alias mpvyt="youtube-viewer --resolution=360p"
 alias pron="mpv /home/damez/Mail/a30"
 alias mov="mpv /home/damez/Videos/film"
 alias tut="mpv /home/damez/Videos/linux"
 alias tv="mpv --force-window -autofit 500x280 --shuffle /home/damez/Documents/iptv"
 alias mts="dmenumount"
 alias wals="wal -f Documents/colorscheme/solarizedd.txt"
 alias walf="wal -l  --theme github"
 alias um="dmenuumount"
 alias build="make && sudo make install"
 alias acc="acestream-launcher --player mpv"
 alias tmx="tmux attach"
 alias cx="vim ~/.Xresources"
 alias cv="vim ~/.vimrc"
 alias catx="cat ~/.xsession-errors"
 alias bd="cd .."
 alias ww="hexfetch"
 alias mut="hexfetch"
 alias fetch="toy"
 alias wall="wal -f Documents/colorscheme/yousai.txt"
 alias wald="wal -f Documents/colorscheme/hybrid.txt"
 alias wald="wal -f Documents/colorscheme/hybrid.txt"
 alias tt="trizen"
 alias cpu="sudo cpu-x -n"
 alias cpro="vim ~/.profiles"
 alias wee="weechat"
 alias sr="surfraw -browser=w3m"
 alias w3ms="w3m ~/.w3m/bookmark.html"
 alias surfraw="surfraw -browser=qutebrowser"
 alias hbcli="HandBrakeCLI --preset-import-file ~/Documents/scripts/videosa.json "videosa""
 alias siri="betty/main.rb"
 alias lsb="lsblk"
 alias lsu="lsusb"
 alias lsc="lscpu"
 alias lsp="lspci"
 alias gc="git clone"
 alias nn="startx"
 alias six="img2sixel -w 500 -h 500"
 alias badge="img2sixel -w 500 -h 300 Pictures/wal/badge.png && nf"

 fzf-dmenu() {
 selected="$(ls /usr/share/applications | fzf -e)"
 nohup `grep '^Exec' "/usr/share/applications/$selected" | tail -1 | sed 's/
 ^Exec=//' | sed 's/%.//'` >/dev/null 2>&1&
}
	fzf-surfraw() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)" ;}

 bindkey -s '^O' "fzf-dmenu\n"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
PATH="$HOME/Documents/scripts:$PATH"
PATH="$HOME/.emacs.d/bin:$PATH"
export PATH
export SPOTIFY_USER="harimurtie"
export SPOTIFY_PWD="Pepesikan24"
export EDITOR=vim
export TUIR_EDITOR=/usr/bin/vim
export TUIR_BROWSER=/usr/bin/qutebrowser

