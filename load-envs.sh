#!/bin/bash
set -a  # Automatically export all variables
source /app/.env  # Load environment variables from .env file
set +a  # Disable automatic export

# Check if a command is passed and execute it
if [ $# -gt 0 ]; then
    python -m gpt_engineer.main "$@"
else
    tail -f /dev/null  # Keep the container running
fi