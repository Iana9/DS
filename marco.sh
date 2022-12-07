#!/bin/bash
if [[  ! -f '/home/iana/Desktop/dir.txt'  ]]; then 
    touch /home/iana/Desktop/dir.txt
fi
pwd > /home/iana/Desktop/dir.txt
