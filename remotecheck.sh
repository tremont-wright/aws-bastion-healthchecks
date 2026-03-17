#!/bin/bash

TARGETS=("10.0.2.247")

for host in "${TARGETS[@]}"; do
  echo "===== Checking $host ====="
  ssh ec2-user@$host '
    echo "Hostname: $(hostname)"
    systemctl is-active sshd
    systemctl is-active docker
  '
  echo
done
