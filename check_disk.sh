#!/usr/bin/env bash
# checks mounted filesystems and prints any > threshold
THRESHOLD=85
df -hP | awk 'NR==1{next} {gsub("%","",$5); if($5>ENVIRON["THRESHOLD"]) print $0}'

