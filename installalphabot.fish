function installalphabot
set apm_path (find . | grep prod | grep apm | fzf)
set apm (basename $apm_path)
# echo $apm
scp $apm_path $argv[1]:/tmp
sshpass -p "root" ssh $argv[1] -t  " . /etc/profile; apm install /tmp/$apm"
startalphabot $argv[1]
end
