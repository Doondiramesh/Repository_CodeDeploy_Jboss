#!/usr/bin/bash
#HOST_IP=ifconfig | grep -i "inet" | grep -v "127.0.0.1" | awk -F ' ' '{print $2}'
#sh /tch/jboss/bin/jboss-cli.sh --connect --controller=$HOST_IP:9999 command="/host=$hostname:shutdown"

su seprepo <<'EOF'
sh /tch/jboss.sh stop

Jboss_not_running="JBoss is not running on this machine!"
JbossStatus=`sh /tch/jboss.sh status`
#echo JbossStatus=$JbossStatus 
#echo Jboss_not_running=$Jboss_not_running

while true
do 
if [ "$JbossStatus" == "JBoss is not running on this machine!" ]
then
#echo "JBoss is not running on this machine!"
break;
fi
#echo "JBoss is running"
JbossStatus=`sh /tch/jboss.sh status`
done 

exit 0

EOF
