echo -e "输入端口号或者输入p退出:port= \c"
read port
while [ "$port" != p  ];
do
ufw delete allow $port/tcp
ufw delete allow $port/udp
echo -e "输入端口号或者输入p退出:port= \c"
read port
done
ufw status	     
