function gptc
    for index in (seq 1 (paste | gnumfiles))
        set file_path (paste | gpathindex $index)
        set file_content (paste | gindex $index | string collect)
        mkdir -p (dirname $file_path)
        echo $file_content > $file_path
    end
end
