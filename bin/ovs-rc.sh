#!/bin/bash
if [ $# -eq 0 ]
then
    echo "$0 (start | stop )"
else
  case $1 in
  start)
	ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock & #启动服务器
	ovs-vswitchd & #启动交换机
	ovs-vsctl show  #查看交换机状态
	;;
  stop)
	pkill ovs-vswitchd
	pkill ovsdb-server
	;;
  esac
fi
