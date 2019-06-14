#! /bin/bash

SESSION=Servers

tmux -2 new-session -d -s $SESSION

# Backend
tmux rename-window 'Backend'
tmux split-window \; split-window
# tmux split-window
tmux select-layout even-vertical
tmux send-keys -t 0 "cd workspace/backend/monolith/" C-m
tmux send-keys -t 0 "clear" C-m
tmux send-keys -t 0 "npm run local" C-m
tmux send-keys -t 1 "cd workspace/intermediate/zonarAPI/" C-m
tmux send-keys -t 1 "clear" C-m
tmux send-keys -t 1 "npm run local" C-m
# weights
# tmux send-keys -t 2 "cd workspace/temp/weights/" C-m
# tmux send-keys -t 2 "clear" C-m
# tmux send-keys -t 2 "npm run local" C-m
tmux send-keys -t 2 "cd workspace/dashboards/tsp/" C-m
tmux send-keys -t 2 "clear" C-m
tmux send-keys -t 2 "npm run local" C-m

# Dashboard
tmux new-window -t $SESSION:2 -n 'Dashboard'
tmux split-window \; split-window
tmux select-layout even-vertical
tmux send-keys -t 0 "cd workspace/legacy/old" C-m
tmux send-keys -t 0 "clear" C-m
tmux send-keys -t 0 "npm run local" C-m
tmux send-keys -t 1 "cd workspace/legacy/login" C-m
tmux send-keys -t 1 "clear" C-m
tmux send-keys -t 1 "npm run local" C-m
tmux send-keys -t 2 "cd workspace/legacy/dashboard" C-m
tmux send-keys -t 2 "clear" C-m
tmux send-keys -t 2 "npm run local" C-m

# lmdash
tmux new-window -t $SESSION:3 -n 'Lmdash'
tmux split-window \; split-window
tmux select-layout even-vertical
tmux split-window -h
tmux split-window -h
tmux send-keys -t 0 "cd workspace/legacy/common-legacy-api" C-m
tmux send-keys -t 0 "clear" C-m
tmux send-keys -t 0 "npm run local" C-m
tmux send-keys -t 1 "cd workspace/intermediate/white" C-m
tmux send-keys -t 1 "clear" C-m
tmux send-keys -t 1 "npm run local" C-m
tmux send-keys -t 2 "cd workspace/legacy/lmdash" C-m
tmux send-keys -t 2 "clear" C-m
tmux send-keys -t 2 "npm run local" C-m
tmux send-keys -t 3 "cd workspace/legacy/lmdash" C-m
tmux send-keys -t 3 "clear" C-m
tmux send-keys -t 3 "npm run local:jjkeller-local" C-m
tmux send-keys -t 4 "cd workspace/legacy/lmdash" C-m
tmux send-keys -t 4 "clear" C-m
tmux send-keys -t 4 "npm run local:gpsi-local" C-m

# lmdash
tmux new-window -t $SESSION:4 -n 'AUTH'
tmux split-window
# tmux split-window \; split-window
tmux select-layout even-vertical
tmux send-keys -t 0 "cd workspace/dashboards/userportal/" C-m
tmux send-keys -t 0 "clear" C-m
tmux send-keys -t 0 "npm run local" C-m
tmux send-keys -t 1 "cd workspace/intermediate/auth/" C-m
tmux send-keys -t 1 "clear" C-m
tmux send-keys -t 1 "npm run local" C-m
# tmux send-keys -t 2 "cd workspace/legacy/lmdash" C-m
# tmux send-keys -t 2 "clear" C-m
# tmux send-keys -t 2 "npm run local" C-m

tmux select-window -t $SESSION:1

SESSION2=Editor

tmux -2 new-session -d -s $SESSION2

# Work
tmux rename-window 'htop'
tmux send-keys -t 0 "htop" C-m

# Log
tmux new-window -t $SESSION2:2 -n 'Log'
tmux send-keys -t 0 "dailylog" C-m

# Issues
tmux new-window -t $SESSION2:3 -n 'Issues'
tmux send-keys -t 0 "issues" C-m

# Select Defalut Window
tmux select-window -t $SESSION2:1

tmux -2 attach-session -t $SESSION2
