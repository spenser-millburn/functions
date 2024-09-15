function state_machine
    set state "start"
    while true
        switch $state
            case "start"
                echo "State: start"
                if gptguard (read --prompt-str="Type: ")
                    echo "no thats not right"
                    set state "incorrect"
                else
                    echo "yes thats correct"
                    set state "correct"
                end
            case "incorrect"
                echo "State: incorrect"
                # Add more transitions or actions here if needed
                break
            case "correct"
                echo "State: correct"
                # Add more transitions or actions here if needed
                break
            case "*"
                echo "Unknown state"
                break
        end
    end
end
