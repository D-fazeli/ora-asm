#!/usr/bin/expect 

set timeout 1

spawn /etc/init.d/oracleasm configure

expect "Default user to own the driver interface []:\r"
send -- "grid\r"
expect "Default group to own the driver interface []:\r"
send -- "asmadmin\r"
expect {Scan for Oracle ASM disks on boot (y/n) [y]:\r}
send -- "y\r"
interact
