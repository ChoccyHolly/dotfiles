# Download Latest Neovim Configs
echo "Downloading Latest Neovim Configs..."
if ls ~/.dotfiles/.config/nvim | grep lua >> /dev/null
    git -C $HOME/.dotfiles submodule update --recursive --remote >> /dev/null
else
    git -C $HOME/.dotfiles submodule update --init --recursive >> /dev/null
end

# Remove Old config.fish
echo "Removing Old config.fish..."
rm ~/.config/fish/config.fish

# Download Fish Theme
echo "Downloading Fish Theme..."
mkdir ~/.config/fish/themes
curl -s https://raw.githubusercontent.com/folke/tokyonight.nvim/refs/heads/main/extras/fish_themes/tokyonight_night.theme >> ~/.config/fish/themes/tokyonight_night.theme

# Download Fisher
echo "Downloading Fisher..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher >> /dev/null

# Download and Configure Tide
echo "Downloading and Configuring Tide..."
fisher install IlanCosman/tide@v6 >> /dev/null
tide configure --auto --style=Classic --prompt_colors='16 colors' --show_time=No --classic_prompt_separators=Angled --powerline_prompt_heads=Round --powerline_prompt_tails=Round --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Disconnected --powerline_right_prompt_frame=No --prompt_spacing=Compact --icons='Many icons' --transient=No
set tide_left_prompt_items os context pwd git newline character
set tide_right_prompt_items
set tide_context_always_display true
set tide_os_color $os_branding_color
set tide_os_icon "$tide_os_icon "

# Download Zellij on Ubuntu
if lsb_release -a | grep "Ubuntu" >> /dev/null
    if type -q zellij; else
        echo "Downloading Zellij..."
        curl -sLO "https://github.com/zellij-org/zellij/releases/latest/download/zellij-aarch64-unknown-linux-musl.tar.gz"
        tar -xf zellij-aarch64-unknown-linux-musl.tar.gz
        rm zellij-aarch64-unknown-linux-musl.tar.gz
        echo "Run \"sudo mv zellij /bin/zellij\" to Install Zellij"
    end
end

# Stow Dotfiles
echo "Stowing Dotfiles..."
stow -d ~/.dotfiles .
rm ~/install.fish

# List Programs
echo "Remember to install Neovim, Zellij, Eza, and Vivid"
