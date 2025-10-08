### Supress Welcome Message
set fish_greeting

### Aliases
# Eza
alias e "eza -lh --git --icons --git-ignore --smart-group --no-permissions --color=always --group-directories-first"
alias ea "eza -lha --git --icons --git-ignore --smart-group --no-permissions --color=always --group-directories-first"
alias et "eza -lhT -L 3 --git --icons --git-ignore --smart-group --no-permissions --color=always --group-directories-first"
alias eat "eza -lhaT -L 3 --git --icons --git-ignore --smart-group --no-permissions --color=always --group-directories-first"

# Kitty
alias icat "kitty +kitten icat"

### Set Theme
fish_config theme choose tokyonight_night
if type -q vivid
    set -x LS_COLORS $(vivid generate tokyonight-night)
end

### Zellij
if type -q zellij
    if status is-interactive
        set ZELLIJ_AUTO_EXIT true
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end
