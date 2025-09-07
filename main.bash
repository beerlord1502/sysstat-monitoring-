#!/bin/bash

#  SPDX-FileCopyrightText: 2024 Maxim Puhov <maximuspuhov@gmail.com>
#  SPDX-License-Identifier: MIT


# just design
st="-------------------------------------------------------------------------------"

# all info(main code)
echo -e "===host info==="
echo $st
ip add
echo $st

echo -e "\n===network info==="
echo $st
sar -n DEV 1 2
echo $st

echo -e "\n===network errors monitoring==="
echo $st
sar -n EDEV 1 2
echo $st

echo -e "\n===TCP metrics==="
echo $st
sar -n TCP 1 2
echo $st

# main code
echo -e  "\n===general info==="
echo $st
iostat
echo $st

echo -e "\n===CPU use==="
echo $st
mpstat
echo $st

echo -e  "\n===statistic about CPU==="
echo $st
sar 1 2
echo $st

echo -e "\n===process info==="
echo $st
pidstat -h
echo $st

echo -e "\n===storage stats==="
df -h
echo $st
sar -r 1 2
echo $st

echo -e "\n===swap stats==="
echo $st
sar -S 1 2
echo $st

echo -e "\n===swapping stats==="
echo $st
sar -W  1 2
echo $st

echo -e "\n===storage active==="
echo $st
sar -d 1 2
echo $st

echo -e "\n===general active stat==="
echo $st
sar -b 1 2
echo $st

