#!/bin/bash
find . -name "secrets.yml" -exec ansible-vault encrypt "{}" \;
# Remove .retry files
find . -name "*.retry" -exec rm -vf "{}" \;