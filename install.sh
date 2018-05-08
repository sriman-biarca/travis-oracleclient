#!/bin/sh -e

wget https://raw.githubusercontent.com/Vincit/travis-oracledb-xe/master/packages/oracle-xe-11.2.0-1.0.x86_64.rpm.zip.aa
wget https://raw.githubusercontent.com/Vincit/travis-oracledb-xe/master/packages/oracle-xe-11.2.0-1.0.x86_64.rpm.zip.ab
wget https://raw.githubusercontent.com/Vincit/travis-oracledb-xe/master/packages/oracle-xe-11.2.0-1.0.x86_64.rpm.zip.ac
wget https://raw.githubusercontent.com/Vincit/travis-oracledb-xe/master/packages/oracle-xe-11.2.0-1.0.x86_64.rpm.zip.ad
wget https://github.com/sriman-biarca/travis-oracleclient.git


sudo apt-get install libaio1 -y

export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib/:$LD_LIBRARY_PATH
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export PATH=$PATH:$ORACLE_HOME/bin

cd /usr/lib/oracle/11.2/client64
ls -ltr


"$ORACLE_HOME/bin/sqlplus" SYSTEM/biarca123@"104.197.220.94/XE" @'sample.txt'
