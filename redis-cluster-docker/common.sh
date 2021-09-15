#!/bin/sh

function getIpAddr(){
	# 获取IP命令
	ipaddr=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"​`
	array=(`echo $ipaddr | tr '\n' ' '` ) 	# IP地址分割，区分是否多网卡
	#array=(172.20.32.214 192.168.1.10);
	num=${#array[@]}  						#获取数组元素的个数

	# 选择安装的IP地址
	if [ $num -eq 1 ]; then
		#echo "*单网卡"
		local_ip=${array[*]}
		return 0
	elif [ $num -gt 1 ];then
	  local_ip=${array[1]}
	  return 0
#   自带的选择脚本
#		echo -e "\033[035m******************************\033[0m"
#		echo -e "\033[036m*    请选择安装的IP地址		\033[0m"
#		echo -e "\033[032m*      1 : ${array[0]}		\033[0m"
#		echo -e "\033[034m*      2 : ${array[1]} 		\033[0m"
#		echo -e "\033[035m******************************\033[0m"
#		#选择需要安装的服务类型
#		input=""
#		while :
#		do
#			read -r -p "*请选择安装的IP地址(序号): " input
#			case $input in
#				1)
#					local_ip=${array[0]}
#					#echo "选择网段1的IP为：${local_ip}"
#					break
#					;;
#				2)
#					local_ip=${array[1]}
#					#echo "选择网段2的IP为：${local_ip}"
#					break
#					;;
#				*)
#				echo "*请输入有效的数字:"
#					;;
#			esac
#		done
	else
		echo -e "\033[31m*未设置网卡IP，请检查服务器环境！ \033[0m"
		exit 1
	fi
}