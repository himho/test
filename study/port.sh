#！/bin/bash
#ubuntu中ufw防火墙端口打开与关闭，可连续输入端口号；
#himho
#20201004001
echo -ne  "请输入add为添加端口号，输入closed为关闭端口号，list为查询端口状态,quit为退出:> \c"
read port 
while [ "$port" != quit ];
do
case $port in
	add)
	echo -e "输入端口号或者输入q退出添加:>  \c"
	read port
	while [ "$port" != q  ];
	do
		ufw allow $port/tcp
		ufw allow $port/udp
		ufw status |grep $port
		echo -e "输入端口号或者输入q退出添加:>  \c"
		read port
	done;;
	closed)
	echo -e "输入端口号或者输入p退出删除:> \c"
	read port
	while [ "$port" != q  ];
	do
		ufw delete allow $port/tcp
		ufw delete allow $port/udp
		echo -e "输入端口号或者输入q退出删除:> \c"
		read port
	done;;
list)
	   echo -e "输入单独端口号或者all查询所有端口或者输入q退出查询:> \c"
	   read port
	   while [ "$port" != q ];
	   do
	   case $port in
		   all)
			   ufw status;;
		     *)
			
			    if  ufw status | grep $port
			    then
			    >/dev/null
			   	   

			    else
				    echo "端口不存在"
			    fi;;
	     esac
	     echo -e "输入单独端口号或者all查询所有端口或者输入q退出查询:> \c"
	     read port
     done;;
	   esac
	   echo -e "请输入add为添加端口号，输入closed为关闭端口号，list为查询端口状态,quit为退出:> \c"
	   read  port
   done
