function create-ssh-key
ssh-keygen && cat ~/.ssh/id_rsa.pub | clip
end
