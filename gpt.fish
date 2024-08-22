function gpt
if [ "$argv[1]" = "repl" ]
  sgpt --repl temp
else if [ "$argv[1]" = "s" ]
  sgpt --shell "$argv"
else
  python3 $HOME/personal/repo/chatgpt-cli/chatgpt.py 
end
end
