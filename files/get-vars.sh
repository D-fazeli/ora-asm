#!/bin/bash

export ram=`free | grep Mem | awk {'print $2'}`
export shmmax=$((ram / 2))
export page_size=`getconf PAGE_SIZE`
export shmall=$((shmmax / page_size))

# Get  Ram; index [0] in stdout
echo -e `env | grep ram` | awk -F "=" {'print $2'} 
# calcute shmmax; index [1] in stdout
echo -e `env | grep shmmax` | awk -F "=" {'print $2'} 
# Get page_size_os; index [2] in stdout
echo -e `env | grep page_size` | awk -F "=" {'print $2'} 
# Get shmall; index [3] in stdout
echo -e `env | grep shmall` | awk -F "=" {'print $2'} 

  
