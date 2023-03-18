# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Shorcuts
alias cf="cd ~/Documents/Backuped/dotfiles"

#Wheather
alias wheather='curl wttr.in'

# Keyboard layout
alias pl="setxkbmap -layout pl"
alias en="setxkbmap -layout pl"

# LAMPP 
alias strlamp='sudo /opt/lampp/lampp start'
alias stplamp='sudo /opt/lampp/lampp stop'

# RANGER
alias r='ranger'

# GIT 
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gc='git commit -m'
alias gco='git checkout'
alias gl='git log'
alias gb='git branch'
alias gpu='git pull'
alias gf='git fetch' 
alias gch='git checkout' 

# chrome 
alias ch='exec google-chrome'

# NVIM 
alias v='nvim' 

# Django 
alias rs='python manage.py makemigrations && python manage.py migrate && python manage.py runserver'
alias nv='sudo chmod u+x ~/Programms/NeoVim/nvim.appimage && sudo ~/Programms/NeoVim/nvim.appimage' 

# Docker and Django 
alias drs='docker-compose run --rm web sh -c "python manage.py makemigrations && python manage.py migrate"' 
alias dt='docker-compose run --rm web sh -c "python manage.py test && flake8"'
alias drw='docker-compose run --rm web sh -c "python manage.py runserver 0.0.0.0:8000"' 
alias drdb='docker-compose run db'

# Docker 
alias docker_login="docker exec -it db bash" 

# Navigation 
alias p='cd ~/Projects'

# Vimrc 
alias init=' nvim ~/.config/nvim/init.vim'

#Joplin 
alias joplin='setsid ~/.joplin/Joplin.AppImage' 

# YouTube downloader 
alias yt='source ~/Projects/youtube/env/bin/activate && python ~/Projects/youtube/downloader.py' 

# Deactivate environmant 
alias ds='deactivate source' 

# PGADMIN 
alias pgadmin='setsid /usr/pgadmin4/bin/pgadmin4' 
alias addmonitor='xrandr --output HDMI-1 --auto --right-of LVDS-1' 
alias sv='source venv/bin/activate'

# Tmux 
alias t='tmux a -t' 

# Screen 
alias sls="screen -ls" 
alias sr="screen -r" 

# Xrandr 
alias set_light='xrandr --output eDP-1 --brightness' 
alias hdmi='xrandr --output HDMI-1 --auto --right-of eDP-1' 
alias hdmi2='xrandr --output DP-1 --auto --left-of eDP-1' 

# Other 
alias stopwatch='date1=`date +%s`; while true; do     echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; done' 

# Wheather 
alias wheather='curl wttr.in' 

# Python 
alias py_outline='grep -P -n -A1 "(\A|\s)(def|class)\W"'

# TaskWarrior 
add_task() {
	local arg_1="$1"
	local arg_1="$2"
	task add project:$1 $2 
}
alias ta=task_func 

# i3 
alias mtl="i3-msg move workspace to output left" 
alias mtr="i3-msg move workspace to output right"


export BROWSER=/usr/bin/brave
export VISUAL=vim;
export EDITRO=vim;

