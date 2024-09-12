function update_gptalchemy
 for file in (ls |grep ".fish"); echo $file;cp ~/.config/fish/functions/$file ./$file;end;
end
