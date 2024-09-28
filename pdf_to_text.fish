function pdf_to_text
    if test (count $argv) -ne 1
        echo "Usage: pdf_to_text <pdf_file>"
        return 1
    end

    set pdf_file $argv[1]

    if not test -f $pdf_file
        echo "File not found: $pdf_file"
        return 1
    end

    pdftotext $pdf_file - 2>/dev/null
end
