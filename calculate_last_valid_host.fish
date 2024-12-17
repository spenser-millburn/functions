function calculate_last_valid_host
    python -c '
network = "172.21.64.0"
subnet_mask = "255.255.192.0"

# Convert subnet mask to binary and calculate host bits
subnet_mask_binary = "".join(format(int(octet), "08b") for octet in subnet_mask.split("."))
host_bits = 32 - subnet_mask_binary.count("1")

# Calculate total number of hosts
total_hosts = (2 ** host_bits) - 2

network_octets = list(map(int, network.split(".")))
network_octets[1] += 64  # Increment the third octet by 64
next_subnet_network = ".".join(map(str, network_octets))

# Calculate the broadcast address for the current subnet
broadcast_octets = list(map(int, next_subnet_network.split(".")))
broadcast_octets[2] -= 1  # Decrement the third octet by 1
broadcast_octets[3] = 255  # Set the fourth octet to 255
broadcast_address = ".".join(map(str, broadcast_octets))

# Calculate the last valid host
last_valid_host_octets = broadcast_octets[:]
last_valid_host_octets[3] -= 1  # Decrement the fourth octet by 1
last_valid_host = ".".join(map(str, last_valid_host_octets))

print("The last valid host is:", last_valid_host)
'
end
