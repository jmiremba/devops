#!/bin/bash
find . -name "secrets.yml" -exec ansible-vault decrypt "{}" \;
