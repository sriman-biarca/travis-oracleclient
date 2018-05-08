#!/bin/sh -e

wget https://raw.githubusercontent.com/sriman-biarca/travis-oracleclient/master/packages/oracle-instantclient11.2-basic_11.2.0.4.0-2_amd64.deb
wget https://raw.githubusercontent.com/sriman-biarca/travis-oracleclient/master/packages/oracle-instantclient11.2-devel_11.2.0.4.0-2_amd64.deb
wget https://raw.githubusercontent.com/sriman-biarca/travis-oracleclient/master/packages/oracle-instantclient11.2-sqlplus_11.2.0.4.0-2_amd64.deb

sudo apt-get install libaio1 -y

sudo dpkg --install oracle-instantclient11.2-devel_11.2.0.4.0-2_amd64.deb
sudo dpkg --install oracle-instantclient11.2-sqlplus_11.2.0.4.0-2_amd64.deb
sudo dpkg --install oracle-instantclient11.2-basic_11.2.0.4.0-2_amd64.deb
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib/:$LD_LIBRARY_PATH
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export PATH=$PATH:$ORACLE_HOME/bin

cd /usr/lib/oracle/11.2/client64
ls -ltr


"$ORACLE_HOME/bin/sqlplus" SYSTEM/biarca123@"104.197.220.94/XE" @'../sample.txt'
