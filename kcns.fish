function kcns
    if test (count $argv) -ne 1
        echo "Usage: ksetns <namespace>"
        return 1
    end

    set -l namespace $argv[1]
    kubectl config set-context --current --namespace=$namespace
    if test $status -eq 0
        echo "Namespace set to $namespace"
    else
        echo "Failed to set namespace to $namespace"
    end
end
