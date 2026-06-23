#!/bin/bash
START_TIME=$(date +%s)

# Your script logic here

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo "Script completed in ${DURATION} seconds"