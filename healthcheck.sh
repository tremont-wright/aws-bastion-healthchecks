#!/bin/bash

echo "===== HOST CHECK ====="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo

echo "===== IP ====="
ip a
echo

echo "===== ROUTES ====="
ip route
echo

echo "===== DISK ====="
df -h
echo

echo "===== MEMORY ====="
free -h
