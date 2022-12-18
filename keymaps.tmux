# Bind Prefix to C-Space
unbind C-Space
set -g prefix C-Space
bind C-Space send-prefix

# More intuitive splits
bind-key "|" split-window -h -c "#{pane_current_path}"
bind-key "\\" split-window -fh -c "#{pane_current_path}"

bind-key "-" split-window -v -c "#{pane_current_path}"
bind-key "_" split-window -fv -c "#{pane_current_path}"

# Swap windows
bind -r "<" swap-window -d -t -1
bind -r ">" swap-window -d -t +1

# Join pane
bind-key j choose-window 'join-pane -h -s "%%"'
bind-key J choose-window 'join-pane    -s "%%"'

# Toggle between windows
bind-key Space last-window

# Toggle between sessions
bind-key C-Space switch-client -l

# Add binding to reload tmux.conf for fast, iterative development
bind r source-file ~/.tmux.conf \; display "~/.tmux.conf reloaded!"

# Keep current path when creating new window
bind c new-window -c "#{pane_current_path}"

# Go to a marked pane
bind \` switch-client -t'{marked}'

bind -n C-z run-shell "ps -o state= -o comm= -t '#{pane_tty}'"
