#!/bin/bash

# gt - greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal


number=$1;

if [$number -gt 5 ]; then
    echo "The number is greater than 5"
elif [$number -lt 5 ]; then
    echo "The number is less than 5"
else
    echo "The number is equal to 5"
fi




