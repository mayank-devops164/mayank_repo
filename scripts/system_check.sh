#!/bin/bash

echo "========== SYSTEM HEALTH CHECK ============"

	echo "Hostname:"
	hostname
        
	echo "Uptime:"
	uptime

	echo "CPU Load:"
	uptime | awk -F'load average:' '{print $2}'
	
	echo "Memory:"
	free -h 

	echo "Disk:"
	df -h 

	echo "TOP Processes:"
	ps -eo pid,comm,%cpu,%mem --sort=-%cpu |head

	echo "Current User"
	whoami

	echo "Memory Percentage:"
	free | awk '/Mem:/ {printf("%.2f%%\n", $3/$2 * 100)}'

echo "============ CHECK COMPLETED ================"
