function get_faults
    # Define the fault codes in a list
    set fault_codes  (string split ' ' $argv)

    # Iterate through each fault code and call get_fault
    for fault_code in $fault_codes
        echo "Fetching details for fault: $fault_code"
        get_fault $fault_code
        echo "-------------------------------------------------------------------"
    end
end
