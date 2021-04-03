echo -e "输入端口号或者输入p退出:port= \c"
read port
if [ "$port" != p  ];
then
ufw allow $port/tcp
ufw allow $port/udp
echo -e "输入端口号或者输入p退出:port= \c"
read port
fi
ufw status     
