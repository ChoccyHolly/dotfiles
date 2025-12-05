bind "ctrl-alt-d" "cd ~; commandline --function repaint"
bind "ctrl-shift-d" "cd ../; commandline --function repaint"

bind \cf "commandline --current-token --replace -- (string escape -- \$(fzf \
    --walker='file,follow' \
    --walker-skip='Games,.git,node_modules,deps,incremental' \
    --cycle \
    --input-border=rounded \
    --prompt='  ' \
    --ghost='Search Files' \
    --info=hidden \
    --list-border=rounded \
    --highlight-line \
    --gutter=' ' \
    --no-scrollbar \
    --layout=reverse \
    --preview='bat --color=always --decorations=never {}' \
    --preview-border=rounded \
    --preview-window='noinfo,<40(hidden)' \
    --color=fg:#565F89,fg+:#C0CAF5,bg+:#292E42,hl:#7e86ae,hl+:#9ECE6A,input-border:#E0AF68,border:#292E42,prompt:#E0AF68,ghost:#565F89,pointer:#6183BB \
))"

bind \cd "cd \$(fzf \
    --walker='dir,follow' \
    --walker-skip='Games,.git,node_modules,deps,incremental' \
    --cycle \
    --input-border=rounded \
    --prompt='  ' \
    --ghost='Change Directory' \
    --info=hidden \
    --list-border=rounded \
    --highlight-line \
    --gutter=' ' \
    --no-scrollbar \
    --layout=reverse \
    --preview='eza -L 3 --tree --icons --git-ignore --color=always --group-directories-first {}' \
    --preview-border=rounded \
    --preview-window='noinfo,<40(hidden)' \
    --color=fg:#565F89,fg+:#C0CAF5,bg+:#292E42,hl:#7e86ae,hl+:#9ECE6A,input-border:#E0AF68,border:#292E42,prompt:#E0AF68,ghost:#565F89,pointer:#6183BB \
); commandline --function repaint"
