# NOTE: you can use vars with $<var> and ${<var>} as long as the str is double quoted: ""
# WARNING: hex colors can't contain capital letters

# --> Catppuccin
thm_bg="#1e1e28"
thm_fg="#ffffff"
thm_cyan="#2ce7ff"
thm_black="#15121c"
thm_gray="#332e41"
thm_magenta="#d30069"
thm_pink="#ff52c2"
thm_red="#ff005c"
thm_green="#52ff97"
thm_yellow="#ffe12c"
thm_blue="#1b9eff"
thm_orange="#d38700"
thm_black4="#575268"
thm_peach="#faffc8"

# ----------------------------=== Theme ===--------------------------

# status
set -g status-position top
set -g status "on"
set -g status-bg "${thm_bg}"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-right-length "100"

# messages
set -g message-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"
set -g message-command-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"

# panes
set -g pane-border-style fg="${thm_gray}"
set -g pane-active-border-style fg="${thm_blue}"

# windows
setw -g window-status-activity-style fg="${thm_fg}",bg="${thm_bg}",none
setw -g window-status-separator ""
setw -g window-status-style fg="${thm_fg}",bg="${thm_bg}",none

################################################################################
# --------=== Statusline
################################################################################
# set -g status-left-style NONE
# set -g status-right-style NONE

# Set window name to Git branch
set -g status-interval 5
set -g automatic-rename on
set -g automatic-rename-format '#(git -C #{pane_current_path} branch --show-current 2>/dev/null || echo " ")'

set -g status-left ""
# set -g status-right "#[fg=$thm_pink,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_pink,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] #W #{?client_prefix,#[fg=$thm_red],#[fg=$thm_green]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_green]}#[fg=$thm_bg] #[fg=$thm_fg,bg=$thm_gray] #S "
set -g status-right "#[fg=$thm_pink,bg=$thm_bg,nobold,nounderscore,noitalics]█#[fg=$thm_bg,bg=$thm_pink,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] #W #[fg=$thm_fg,bg=$thm_gray] #{?client_prefix,#[fg=$thm_red],#[fg=$thm_green]}#[bg=$thm_gray]█#{?client_prefix,#[bg=$thm_red],#[bg=$thm_green]}#[fg=$thm_bg]  #[fg=$thm_fg,bg=$thm_gray] #S "

# current_dir
# setw -g window-status-format "#[fg=$thm_bg,bg=$thm_blue] #I #[fg=$thm_fg,bg=$thm_gray] #{b:pane_current_path} "
# setw -g window-status-current-format "#[fg=$thm_bg,bg=$thm_yellow] #I #[fg=$thm_fg,bg=$thm_bg] #{b:pane_current_path} "

setw -g window-status-format "#[fg=$thm_bg,bg=$thm_peach] #I #[fg=$thm_fg,bg=$thm_gray] #(echo '#{pane_current_path}' | rev | cut -d '/' -f -1 | rev) "
setw -g window-status-current-format "#[fg=$thm_bg,bg=$thm_blue] #I #[fg=$thm_fg,bg=$thm_bg] #(echo '#{pane_current_path}' | rev | cut -d '/' -f -2 | rev) "

# --------=== Modes
setw -g clock-mode-colour "${thm_blue}"
setw -g mode-style "fg=${thm_pink} bg=${thm_black4} bold"
