function kcnsactive
    set namespace (kubectl config view --minify --output 'jsonpath={..namespace}')
    if test -z "$namespace"
        echo "No namespace is set"
    else
        echo "Current namespace: $namespace"
    end
end
