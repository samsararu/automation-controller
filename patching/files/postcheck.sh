#!/bin/bash

output_file="/home/ansible/postcheck_$(date +"%d-%m-%Y").txt"

echo -e "\nDate & Time Information:" >> "$output_file"
date >> "$output_file" 2>&1

echo -e "\nMounted Filesystems:" >> "$output_file"
df -Th >> "$output_file" 2>&1

echo -e "\nBlock IDs Information:" >> "$output_file"
blkid >> "$output_file" 2>&1

echo -e "\nDisks Information:" >> "$output_file"
fdisk -l >> "$output_file" 2>&1

echo -e "\nBlock Storage Information:" >> "$output_file"
lsblk >> "$output_file" 2>&1

echo -e "\nVolume Groups Information:" >> "$output_file"
vgdisplay >> "$output_file" 2>&1

echo -e "\nLogical Volume Information:" >> "$output_file"
lvdisplay >> "$output_file" 2>&1

echo -e "\nMultipathing Information:" >> "$output_file"
multipath -ll >> "$output_file" 2>&1

echo -e "\nNetwork Interfaces:" >> "$output_file"
ifconfig -a >> "$output_file" 2>&1

echo -e "\nSystem Memory:" >> "$output_file"
free -m >> "$output_file" 2>&1

echo -e "\nUptime Information::" >> "$output_file"
uptime >> "$output_file" 2>&1

echo -e "\nGRUB Information:" >> "$output_file"
cat /etc/grub2.cfg >> "$output_file" 2>&1

echo -e "\nResource Utilization & Processes Details:" >> "$output_file"
top -bn 1 2>&1 1 >> "$output_file" 2>&1

echo -e "\nRouting Table Information:" >> "$output_file"
route -n >> "$output_file" 2>&1

echo -e "\nFileSystem Table Information:" >> "$output_file"
cat /etc/fstab >> "$output_file" 2>&1
