#nohup sh /tch/jboss/bin/standalone.sh -bmanagement=0.0.0.0 -b=0.0.0.0 -Djboss.home.dir=/tch/jboss -Djboss.server.base.dir=/tch/jboss/standalone -Djboss.domain.config.dir=/tch/jboss/standalone/configuration --server-config=standalone-full-ha.xml > /dev/null 2>&1 &

su seprepo <<'EOF'

#sh /tch/jboss.sh start

JbossStatus=`sh /tch/jboss.sh status`

while true
do
if [ "$JbossStatus" == "JBoss is not running on this machine!" ]
then
#echo "JBoss is not running on this machine!"
sh /tch/jboss.sh start
break;
fi
#echo "JBoss is running"
JbossStatus=`sh /tch/jboss.sh status`
done

EOF
