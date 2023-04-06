#!/bin/bash

# Angel Rodriguez, Jerry Terry, Chris Provenzano

#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#

# Make a directory called System_Stats and change directories to that directory

mkdir System_Stats 
cd System_Stats
	
# Try to make the output for each file look as neat and organized as you can.
# Output the following information to a file called kernel
		# 1. Kernel Name
		# 2. Kernel Release
		# 3. Kernel Version
		# 4. The operating system
        
uname -s >> Kernel
uname -r >> Kernel
uname -v >> Kernel
uname -o >> Kernel

# Output the following information to a file called network
    # 1. Do not print any serial numbers or sensitive information related to the system
    touch network
    # 2. All network interfaces
    sudo su
    lshw -class network -sanitize > network
    
    
# Output the following information to a file called disk.html
    # 1. All disks
    touch disk.html 
    # 2. The output should include html tags, i.e. <html></html>
    sudo su
    lshw -class disk -html > disk.html


# Output the following information to a file called cpu
    # 1. The first five lines of the command lscpu
    lscpu | head -5 >> cpu.txt
    
    echo "----------------------------------------------" >> cpu.txt
    
    # 2. The last 12 lines of the command lscpu
    lscpu | tail -12 >> cpu.txt
    
    

# Output the following information to a file called block_dev
    # 1. Only the name, size, and type of the block devices
    lsblk >> block_dev.txt
    
    # 2. The output should use ascii characters for any tree formatting
    
    
# Output the following information to a file called sata
    # 1. Any Sata devices connected to the machine along with human readable sizes of the devices
    lsscsi >> sata.txt
    
    echo "----------------------------------------------" >> sata.txt
    # 2. More specific information about each device that is connected to the machine
    hostnamectl | sudo hdparm >> sata.txt
    
