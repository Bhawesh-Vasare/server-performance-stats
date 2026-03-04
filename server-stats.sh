#!/bin/bash

echo "======================================"
echo "        Server Performance Report     "
echo "======================================"
echo ""

echo "Hostname: $(hostname)"
echo "Operating System: $(uname -s)"
echo "Kernel Version: $(uname -r)"
echo ""

echo "----------- UPTIME -----------"
uptime
echo ""

echo "----------- MEMORY USAGE -----------"
free -h
echo ""

echo "----------- DISK USAGE (Root) -----------"
df -h /
echo ""

echo "----------- TOP 5 CPU PROCESSES -----------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "----------- TOP 5 MEMORY PROCESSES -----------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""

echo "======================================"
echo "         End of Report"
echo "======================================"