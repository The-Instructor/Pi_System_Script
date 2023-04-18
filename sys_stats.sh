
# add shebang here
#!/bin/bash
# add any contributor names in a comment here
#Andrew Mimori
#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#

# Make a directory called System_Stats and change directories to that directory

mkdir System_Stats
# Try to make the output for each file look as neat and organized as you can.
touch kernel network disk.html cpu block_dev sata
# Output the following information to a file called kernel
    # 1. Kernel Name
    uname -s
    echo 'uname -s'>> kernel
    # 2. Kernel Release
    uname -r
    echo 'uname -r'>> kernel
    # 3. Kernel Version
    uname -v
    echo 'uname -v'>> kernel
    # 4. The operating system
    uname -o
    echo 'uname -o'>> kernel


# Output the following information to a file called network
    # 1. Do not print any serial numbers or sensitive information related to the system
    sudo lshw -short | sudo lshw -sanitize
    echo 'sudo lshw -short | sudo lshw -sanitize'>> network


# 2. All network interfaces
   sudo lshw -html -class network | sudo lshw -sanitize
   echo 'sudo lshw -html -class network | sudo lshw -sanitize'>> network

# Output the following information to a file called disk.html
    # 1. All disks
    sudo lshw -class disk -class storage
    echo 'sudo lshw -class disk -class storage'>> disk.html

    # 2. The output should include html tags, i.e. <html></html>
    sudo lshw -html -class network > lshw.html

     echo 'sudo lshw -html -class network > lshw.html'>> disk.html


# Output the following information to a file called cpu
    # 1. The first five lines of the command lscpu
    lscpu | head -n 5
    echo 'lscpu | head -n 5'>> cpu

    # 2. The last 12 lines of the command lscpu
    lscpu | tail -n 12
    echo 'lscpu | tail -n 12'>> cpu


# Output the following information to a file called block_dev
    # 1. Only the name, size, and type of the block devices
    lsblk -o NAME,SIZE,TYPE -b
    echo 'lsblk -o NAME,SIZE,TYPE -b'>> block_dev


# 2. The output should use ascii characters for any tree formatting
    lsblk -i
    echo  'lsblk -i'>> block_dev


# Output the following information to a file called sata
    # 1. Any Sata devices connected to the machine along with human readable sizes of the devices
    sudo lsscsi -s
    echo ‘sudo lsscsi -s’>>sata
   
    # 2. More specific information about each device that is connected to the machine
    sudo hdparm /dev/sda
    echo ‘sudo hdparm /dev/sda’>>sata
