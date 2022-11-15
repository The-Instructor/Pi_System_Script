#!/bin/bash#System Stats
#System Stats
mkdir system_stats
cd system_stats
uname -s > kernel
uname -r >> kernel
uname -v >> kernel
uname -o >> kernel
lshw -sanitize -class network > network
lshw -html -class disk > disk.html
lscpu lscpu | head -5 > cpu 
lscpu | tail -12 > cpu
lsblk -o name,size,type > block_dev
    
    

    
