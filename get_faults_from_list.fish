function get_faults_from_list
    # Define the fault codes in a list
    set codes (g from "$argv", extract the fault codes and separate with a space) 
    set fault_codes  (string split ' ' $codes)

    # Iterate through each fault code and call get_fault
    for fault_code in $fault_codes
        echo "Fetching details for fault: $fault_code"
        get_fault $fault_code
        echo "-------------------------------------------------------------------"
    end
end
