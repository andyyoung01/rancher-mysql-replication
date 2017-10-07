Rancher-MysqlReplication-Maxscale
===============
This project provides a method to deploy mysql-replication cluster with Maxscale in Rancher.

For simplicity, I didn't make a catalog for rancher. You just need to modify docker-compose.yml to deploy this cluster.

This cluster needs at least three nodes to start. 

The enviroment variable MasterIP, Slave1IP and Slave2IP are the ip addresses of each host. And I pined the master node to the host which have the MasterIP of 192.168.56.201 using host_label. So when you deploy this cluster, you need to choose a host as master and get the ip address of this host to fill in the MasterIP, and also you need to assigne this host a host_label to ensure the master stay in this host.