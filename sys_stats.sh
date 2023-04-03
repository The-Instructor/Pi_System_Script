#!/bin/bash

#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#
# part 1 and 2 will be Liam
# part 3 and 4 will be Joseph
# part 5 and 6 will be Tom

# All output will be stored in ~/Documents/System_Stats
mkdir -p ~/Documents/System_Stats # if system stats
cd ~/Documents/System_Stats 

# Make a directory called System_Stats and change directories to that directory
# Try to make the output for each file look as neat and organized as you can.

# 1 Output the following information to a file called kernel



    # uname

    # 1. uname = Shows kernel name
    # 2. uname -r Shows current kernel release date 
    # 3. uname -v Shows current kernel Version 
    # 4. uname -o Shows kernel operating system 


    # 1. Kernel Name
    # 2. Kernel Release
    # 3. Kernel Version
    # 4. The operating system


# 2 Output the following information to a file called network
    # 1. Do not print any serial numbers or sensitive information related to the system
    # 2. All network interfaces
    
    
# 3 Output the following information to a file called disk.html
    # 1. All disks
    # 2. The output should include html tags, i.e. <html></html>


# 4 Output the following information to a file called cpu
    # 1. The first five lines of the command lscpu
    # 2. The last 12 lines of the command lscpu
    

# 5 Output the following information to a file called block_dev
    # 1. Only the name, size, and type of the block devices
    # 2. The output should use ascii characters for any tree formatting
touch block_dev
lsblk -i -o 'SIZE,NAME,TYPE' > block_dev
    
    
# 6 Output the following information to a file called sata
    # 1. Any Sata devices connected to the machine along with human readable sizes of the devices
lsscsi -s | grep -i sata > sata
    # 2. More specific information about each device that is connected to the machine



    
