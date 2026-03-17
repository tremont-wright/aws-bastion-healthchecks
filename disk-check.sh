#!/bin/bash

echo "===== Disk Usage Report ====="
date
echo ""

df -h

echo ""
echo "===== Block Devices ====="
lsblk
