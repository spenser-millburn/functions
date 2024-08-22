function commitmsg
  echo [(branchname |cut -c1-9)][(read --prompt-str="Type: ")] (read --prompt-str="message: ")
end
