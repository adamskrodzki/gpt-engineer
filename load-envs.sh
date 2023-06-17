#!/bin/bash
if [ ! -f /app/.env ]; then
    echo "No .env file found in the current directory"
    exit 1
fi

# Set variables
set -a
source /app/.env
set +a

# Print environment variables for verification
env

# Exit script
exit 0

# Check if a command is passed and execute it
if [ $# -gt 0 ]; then
    python -m gpt_engineer.main "$@"
else
    tail -f /dev/null  # Keep the container running
fi