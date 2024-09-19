function qall
for file in (ls -1); echo $file && qr $file; end;
end
