#!/bin/bash
echo "请输入端口"
read port
ufw status | grep $port 

