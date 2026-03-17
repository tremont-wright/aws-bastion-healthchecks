#!/bin/bash

echo "Run at: $(date)"
echo "Hostname: $(hostname)"
echo

for svc in sshd docker; do
  if systemctl is-active --quiet "$svc"; then
    echo "[OK] $svc running"
  else
    echo "[WARN] $svc not running"
  fi
done
