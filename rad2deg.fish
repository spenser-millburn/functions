function rad2deg
    set -l radians $argv[1]
    set -l degrees (math " $radians * (180 / 3.14159265358979323846264338327950288419716939937510)")
    echo $degrees
end
