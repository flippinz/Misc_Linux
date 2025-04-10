#!/bin/bash

# This script send server status details to a file.

# Define the output file path
output_file="/scripts/file.txt"

# Get the current date and time
date=$(date)

# Get the system uptime
uptime=$(uptime)

# Get the CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# Get the memory usage
memory_usage=$(free | awk '/Mem/{printf("%.2f%%"), $3/$2*100}')

# Get the disk usage
disk_usage=$(df -h / | awk '/\//{print $5}')

# Write the server status to the output file
echo "Server Status - $date" > "$output_file"
echo "Uptime: $uptime" >> "$output_file"
echo "CPU Usage: $cpu_usage" >> "$output_file"
echo "Memory Usage: $memory_usage" >> "$output_file"
echo "Disk Usage: $disk_usage" >> "$output_file"

# Display a success message
echo "Server status has been written to $output_file"
