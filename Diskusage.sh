--Disk Usage Monitoring Script--

#!/bin/bash

THRESHOLD=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

if [ $usage -gt $THRESHOLD ]; then
    echo "Warning: Disk usage is above $THRESHOLD%"
else
    echo "Disk usage is normal"
fi
