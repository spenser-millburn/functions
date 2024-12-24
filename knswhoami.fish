function knswhoami
kubectl config view --minify --output 'jsonpath={..namespace}'

end
