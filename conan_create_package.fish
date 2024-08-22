# Defined in /tmp/fish.iWFhYi/conan_create_package.fish @ line 1
function conan_create_package
conan new cmake_lib -d name=$argv[1] -d version=1.0
end
