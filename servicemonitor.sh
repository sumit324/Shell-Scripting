#!/bin/bash

service="nginx"

if systemctl is-active --quiet $service
then
    echo "$service is running"
else
    echo "$service is not running. Starting service..."
    systemctl start $service
fi
