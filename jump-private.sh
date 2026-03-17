#!/bin/bash

TARGET="$1"

if [ -z "$TARGET" ]; then
  echo "Usage: ./jump-private.sh <private-ip>"
  exit 1
fi

echo "Jumping to $TARGET..."
ssh ec2-user@"$TARGET"
