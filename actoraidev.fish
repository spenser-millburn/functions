function actoraidev
    # Start a new tmux session
    tmux new-session -d -s mysession

    # Split the window into three panes
    tmux split-window -v -t mysession:0.0
    tmux split-window -v -t mysession:0.1
    tmux split-window -v -t mysession:0.2

    # Run commands in each pane
    tmux send-keys -t mysession:0.0 'kc port-forward deployments/mongo 27017:27017' C-m
    tmux send-keys -t mysession:0.1 'cd /home/smillburn/embd/repo/actorai/apps/prepview/frontend/web && npm run dev' C-m
    tmux send-keys -t mysession:0.2 'cd /home/smillburn/embd/repo/actorai/apps/prepview/backend && python3 api.py' C-m

    # Attach to the tmux session
    tmux attach -t mysession
end
