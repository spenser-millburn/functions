function pcrunch
set cwd (pwd)
set source_path (full_path $argv[1])
cd $PENVDIR/repo/ChunkGPT
python3 solver.py --pdf_path $source_path --page_start $argv[2] --page_end $argv[3] --chunk_size $argv[4]
cd $cwd
end
