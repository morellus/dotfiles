alias exai='exa --icons'
alias la='ls -a --color'
alias top='ytop -c monokai'
alias ocat='/usr/bin/cat'
alias otop='/usr/bin/top'
alias dusto='dust --depth 1'
alias i='sudo apt install $1'
alias sus='systemctl suspend -i'
alias xc='xclip'
alias xcc='xclip -selection clipboard'
alias commit='git commit -a -m'
alias ccargo='clear && cargo'
alias fd='fd -H'
alias amogus='sus'
alias sl='sl -e'
alias tetris='bastet'
alias dc='cmatrix'
alias b='cd ..'
alias twm='typst watch main.typ'
alias twmo='typst watch main.typ out.pdf'
alias sr='scenery r'
alias gitlog='git log --oneline --decorate --graph --branches'
alias fishconf='hx ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
alias tmuxconf='hx ~/.tmux.conf; tmux source-file ~/.tmux.conf'
alias bashconf='hx ~/.tmux.conf'
alias xmodmapconf='hx ~/.xmodmap; xmodmap ~/.xmodmap'
alias gpuwatch='watch -n1 "cat /sys/class/drm/card0/device/hwmon/hwmon2/power1_average"'
alias blender_safe='hsa_disable_sdma=1 hip_visible_devices=0 rocr_visible_devices=0 /home/jan/apps/blender/blender --factory-startup'
alias notes='cd ~/pl/qwertus/autotodo; cargo run ../notes.md data/patterns.ron; hx ~/pl/qwertus/notes.md'
alias promptnotes='hx ~/pl/qwertus/promptnotes.md'
alias catpromptnotes='cat ~/pl/qwertus/promptnotes.md'
alias geppetto='firefox chatgpt.com'
alias files='spf'
alias dolphin='spf'
alias music='spotify_player'
alias clock='peaclock'
alias music_visualizer='cava'
alias starwars='telnet towel.blinkenlights.nl'
alias retro='~/apps/cool-retro-term/cool-retro-term'
alias map='jp2a --colors -z --fill /usr/share/hollywood/map.jpg'
alias steamapps='awk -F\" '\''/"appid"/{appid=$4} /"name"/{print appid " - " $4}'\'' ~/.steam/steam/steamapps/appmanifest_*.acf'
alias steamconsole='steam steam://open/console/'
alias capstoggle='xdotool key Caps_Lock'
alias dudidadaa='paplay ~/Music/trash_jazz.wav'
alias gotofile='z (dirname (fzf))'
alias fuck='fix'
alias calc='qalc'
alias print='lp -d HP_Color_LaserJet_MFP_M283fdw_D03F69'
set -x HELIX_RUNTIME /home/jan/.config/helix
set -x SCENERY_LIB_PATH /home/jan/pl/scenery/lib
set -x XDG_DATA_HOME /home/jan/.local/share/
set -x XDG_CONFIG_HOME /home/jan/.config/
set -x EDITOR hx
set -e LS_COLORS
set -x ROCM_PATH /opt/rocm-6.4.3/rocm/rocm-6.4.3
set -x HIP_PATH $rocm_path
set -x LD_LIBRARY_PATH $rocm_path/lib $rocm_path/lib64 $rocm_path/llvm/lib

set -U fish_color_cwd magenta
set -U fish_color_user magenta

fish_add_path $rocm_path/bin $rocm_path/llvm/bin
fish_add_path /home/jan/bin
fish_add_path /home/jan/scripts
fish_add_path /home/jan/go/bin
fish_add_path /home/jan/apps/cool-retro-term
fish_add_path /home/jan/apps/vex-tui

if status is-interactive
    xmodmap ~/.xmodmap

    fish_vi_key_bindings

    # neofetch
    # fortune | cowsay -f (ls -1 /usr/share/cowsay/cows/ | sort -r | head -1) -n
    zoxide init fish | source
    fixit init fish | source
end
