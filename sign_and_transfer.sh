#!/bin/bash
30 16 * * * echo "Daily file from System1" > ~/encryption_system1/daily_file.txt

openssl dgst -sha256 -sign ~/encryption_system1/private_key.pem -out ~/encryption_system1/daily_file.sig ~/encryption_system1/daily_file.txt
scp ~/encryption_system1/daily_file.txt aaysha@192.168.210.9:~/encryption_system2/
scp ~/encryption_system1/daily_file.sig aaysha@192.168.210.9:~/encryption_system2/


