function wheel_radians_to_linear_travel
    # Convert radians of pinion motion to linear travel on a rack and pinion system
    # Usage: radians_to_linear_travel <radians>
    
    set radius 0.1  # Radius of the wheel meters
    set radians $argv[1]
    
    # Linear travel is the arc length, which can be calculated as: arc length = radius * angle in radians
    set linear_travel (math "$radius * $radians * 1000")
    
    echo "The amount of linear travel on the rack is: $linear_travel mm"
end
