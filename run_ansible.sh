#! /bin/bash

set -e

# Add -vvvv to run in verbose mode
ansible-playbook main.yaml -i hosts -vv