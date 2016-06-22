#!/bin/bash
if [ $# -eq 0 ]
then
    echo "$0 (start | stop )"
else
  case $1 in
  start)
	modprobe openvswitch

    #ovsdb 增加pidfile监听,
    #  便于后续控制 sudo ovs-appctl -t ovsdb-server ovsdb-server/add-remote ptcp:6632
	ovsdb-server --pidfile --remote=ptcp:6632 --remote=punix:/usr/local/var/run/openvswitch/db.sock & #启动服务器
	#ovs-vswitchd & #启动交换机
	#ovs-vsctl show  #查看交换机状态
	;;
  stop)
	#pkill ovs-vswitchd
	pkill ovsdb-server
	;;
  esac
fi
