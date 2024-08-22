# Defined in /tmp/fish.q1jzJw/build-pipeline.fish @ line 2
function build-pipeline
    alphabot
    clean
    configure 7.1
    build
    package
    # install
end
