alias exai='exa --icons'
alias ls='ls -a --color'
alias topy='ytop -c monokai'
alias top='topy'
alias ocat='/usr/bin/cat'
alias otop='/usr/bin/top'
alias dusto='dust --depth 1'
alias i='sudo apt install $1'
alias sus='systemctl suspend -i'
alias xc='xclip'
alias xcc='xclip -selection clipboard'
alias commit='git commit -a -m'
alias ccargo='clear && cargo'
alias ll='ls -la'
alias l='ls'
alias amogus='sus'
alias sl='sl -e'

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
alias blender_safe='HSA_DISABLE_SDMA=1 HIP_VISIBLE_DEVICES=0 ROCR_VISIBLE_DEVICES=0 /home/jan/apps/blender-4.5.2-linux-x64/blender --factory-startup'
alias notes='hx ~/Documents/pl_documents/notes.md'
alias promptnotes='hx ~/Documents/pl_documents/promptnotes.md'
alias catpromptnotes='cat ~/Documents/pl_documents/promptnotes.md'
alias geppetto='firefox chatgpt.com'

set -x HELIX_RUNTIME /home/jan/.config/helix
set -x SCENERY_LIB_PATH /home/jan/Documents/pl_documents/scenery/lib
set -x XDG_DATA_HOME /home/jan/.local/share/
set -x XDG_CONFIG_HOME /home/jan/.config/

set -Ux ROCM_PATH /opt/rocm-6.4.3/rocm/rocm-6.4.3
set -Ux HIP_PATH $ROCM_PATH
fish_add_path $ROCM_PATH/bin $ROCM_PATH/llvm/bin
set -Ux LD_LIBRARY_PATH $ROCM_PATH/lib $ROCM_PATH/lib64 $ROCM_PATH/llvm/lib

if status is-interactive
    xmodmap ~/.xmodmap

    fish_vi_key_bindings
    fish_add_path /home/jan/bin

    neofetch --package_managers on
    fortune | cowsay -f (ls -1 /usr/share/cowsay/cows/ | sort -R | head -1) -n
end
