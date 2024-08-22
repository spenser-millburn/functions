function find_repositories
    for repo in (find . -type d -name ".git")
        cd (dirname $repo)
        git remote -v | grep -v push | getfield 2
        cd -
    end
end
