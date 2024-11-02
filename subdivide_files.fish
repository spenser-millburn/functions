function subdivide_files
    # Get a list of all files in the current directory
    set files (sh -c "ls -p" | grep -v /)

    # Initialize variables
    set subdir_index 1
    set file_count 0

    # Loop through each file
    for file in $files
        # Check if the current subdirectory is full (10 files)
        if test $file_count -eq 10
            # Increment the subdirectory index
            set subdir_index (math $subdir_index + 1)
            # Reset the file count
            set file_count 0
        end

        # Create the subdirectory if it doesn't exist
        set subdir_name "subdir_$subdir_index"
        if not test -d $subdir_name
            mkdir $subdir_name
        end

        # Move the file into the current subdirectory
        mv $file $subdir_name

        # Increment the file count
        set file_count (math $file_count + 1)
    end
end
