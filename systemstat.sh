#!/bin/bash

echo "System stats:"

echo "------------------------------ Current Date & Time -------------------------------"
echo -e "\n"
date | awk '{print "Today'\''s Date:" $3 ", Month: " $2 ", Day: " $1 ",Time: " $4 $5 ", Timezone: " $6 ", year: " $7}'
echo -e "\n"

echo "------------------------------ Disk Space -------------------------------"
echo -e "\n"
echo "Want to see all disks?(type 1) or want to see overall?(type 2)"
read disk_options
case "$disk_options" in 
	1) df -h;;
	2) df -H | xargs | awk '{print "Disk Space Available: " "Free: " $23 "B, Used: " $22 "B"}';;
	*) echo "Type 1 or 2 nothing else";;
esac
echo -e "\n"

echo "------------------------------ User Uptime -------------------------------"
echo -e "\n"
uptime -p | awk '{print "Device has been active for: " $2 " " $3 " " $4 " " $5}'
echo -e "\n"

echo "------------------------------ Last 3 Login Details -------------------------------"
echo -e "\n"
echo "How many last login details you want to see: "
read login_details
last | head -"$login_details"
echo -e "\n"

echo "------------------------------ Currently Connected User Details -------------------------------"
echo -e "\n"
w
echo -e "\n"

echo "------------------------------ END -------------------------------"
