function first_push
  git init && git add . && git commit -m "[ADD] Initial commit" && git remote add origin git@gitlab.com:alertinnovation/embd/internal-tools/remote-controller.git && git push -u origin master
end
