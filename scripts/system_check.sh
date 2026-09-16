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

echo "============ CHECK COMPLETED ================"
