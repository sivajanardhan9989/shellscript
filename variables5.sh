#!/bin/bash
START_TIME=$(date +%s)
echo "Script started at $(date)"

# Your script logic here

END_TIME=$(date +%s)
echo "Script ended at $(date)"
DURATION=$((END_TIME - START_TIME))


echo "Script completed in ${DURATION} seconds"