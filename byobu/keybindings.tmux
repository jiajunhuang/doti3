# split pane
unbind '"'
bind - splitw -v
unbind '%'
bind \ splitw -h

#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R

# copy-mode use vi-like key-binding
setw -g mode-keys vi

# swap with the previous pane (prefix Ctrl+p)
bind ^p swapp -U
# # swap with the next pane (prefix Ctrl+n)
bind ^n swapp -D

# resize pane
bind -r ^k resizep -U 10 # upward (prefix Ctrl+k)
bind -r ^j resizep -D 10 # downward (prefix Ctrl+j)
bind -r ^h resizep -L 10 # to the left (prefix Ctrl+h)
bind -r ^l resizep -R 10 # to the right (prefix Ctrl+l)

# kill pane (prefix q)
bind q killp
# kill window (prefix Ctrl+q)
bind ^q killw

# copy mode
# enter copy mode (prefix Escape)
bind ^v copy-mode
# select (v)
bind -t vi-copy v begin-selection
# copy (y)
bind -t vi-copy y copy-selection

# set prefix keys
unbind-key -n C-a
unbind-key -n C-x
set -g prefix ^X
set -g prefix2 ^X
bind x send-prefix