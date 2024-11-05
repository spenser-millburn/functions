function untar
set tarball $argv[1]
set base_name (basename $tarball .tar.gz)
mkdir $base_name
tar -xzf $tarball -C $base_name
end
