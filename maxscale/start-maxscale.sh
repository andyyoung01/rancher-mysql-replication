#!/bin/bash

/bin/sed -i "s/{{REPLICATION_USER}}/${REPLICATION_USER}/g" /etc/maxscale.d/maxscale.cnf
/bin/sed -i "s/{{REPLICATION_PASSWORD}}/${REPLICATION_PASSWORD}/g" /etc/maxscale.d/maxscale.cnf
/bin/sed -i "s/{{MasterIP}}/${MasterIP}/g" /etc/maxscale.d/maxscale.cnf
/bin/sed -i "s/{{Slave1IP}}/${Slave1IP}/g" /etc/maxscale.d/maxscale.cnf
/bin/sed -i "s/{{Slave2IP}}/${Slave2IP}/g" /etc/maxscale.d/maxscale.cnf
/bin/sed -i "s/{{MySQLPort}}/${MySQLPort}/g" /etc/maxscale.d/maxscale.cnf

/usr/bin/maxscale -d