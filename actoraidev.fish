function actoraidev

  function kill_all_tmux_sessions                                                                                                                            
    # Get a list of all tmux sessions                                                                                                                      
    set sessions (tmux ls 2>/dev/null | cut -d: -f1)                         
                                                                             
    # Loop through each session and kill it
    for session in $sessions          
        tmux kill-session -t $session 
    end                               
end
    kill_all_tmux_sessions
    # Start a new tmux session
    tmux new-session -d -s mysession

    # Split the window into three panes
    tmux split-window -v -t mysession:0.0
    tmux send-keys -t mysession:0.0 'kc port-forward deployments/mongo 27017:27017' C-m
    tmux split-window -v -t mysession:0.1
    tmux send-keys -t mysession:0.1 'cd /home/smillburn/embd/repo/actorai/apps/prepview/frontend/web && VITE_API_URL=https://api.prepview.ai npm run dev' C-m
    tmux split-window -h -t mysession:0.2
    tmux send-keys -t mysession:0.2 'cd /home/smillburn/embd/repo/actorai/apps/prepview/frontend/rizzme && npm run dev' C-m
    tmux split-window -v -t mysession:0.3
    tmux send-keys -t mysession:0.3 'cd /home/smillburn/embd/repo/actorai/apps/prepview/backend && python3 api.py' C-m

    # Run commands in each pane

    # Attach to the tmux session
    tmux attach -t mysession
end
