#!/bin/bash
# A simple shell script to get linux network info
# Prince Nna - 11/7/2019
echo "Current date : $(date) @ $(hostname)"
echo "Network Configuration"
/sbin/ifconfig
