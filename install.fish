# Download Theme
mkdir ~/.config/fish/themes
curl https://raw.githubusercontent.com/folke/tokyonight.nvim/refs/heads/main/extras/fish_themes/tokyonight_night.theme >> ~/.config/fish/themes/tokyonight_night.theme

# Download Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Download and Configure Tide
fisher install IlanCosman/tide@v6
tide configure --auto --style=Classic --prompt_colors='16 colors' --show_time=No --classic_prompt_separators=Angled --powerline_prompt_heads=Round --powerline_prompt_tails=Round --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Disconnected --powerline_right_prompt_frame=No --prompt_spacing=Compact --icons='Many icons' --transient=No
set tide_left_prompt_items os context pwd git newline character
set tide_right_prompt_items
set tide_context_always_display true
set tide_os_color $os_branding_color
set tide_os_icon "$tide_os_icon "
