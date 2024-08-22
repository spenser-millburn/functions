function deg2rad
    set -l degrees $argv[1]
    set -l radians (math " $degrees * (3.14159265358979323846264338327950288419716939937510 / 180)")
    echo $radians
end
