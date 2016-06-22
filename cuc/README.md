# CUC Mininet 实验


## 实验拓扑 

- `hailong_topo.py` 远程 controller 拓扑, 拓扑图: https://www.processon.com/view/link/5752d7f1e4b0695484404d39 

- `hailong_topo_local_controller.py` 本地ovs controller 拓扑, 作本地测试用

```
cd /opt/mininet
sudo ./bin/ovs-rc.sh #(可选) 启动我们的 ovs-vswitch服务
sudo mn -c && sudo python cuc/hailong_topo_local_controller.py  #设置拓扑 
```