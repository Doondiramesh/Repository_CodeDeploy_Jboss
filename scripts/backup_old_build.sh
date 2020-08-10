su seprepo <<'EOF'
date1=`date +%m%d%Y-%H%M`
mkdir -p /tch/deploy.save/$date1
cp -rf /tch/jboss/standalone/configuration/standalone-full-ha.xml /tch/deploy.save/$date1/
#cp -rf /tch/jboss/standalone/configuration/logging.properties /tch/deploy.save/$date1/
cp -rf /tch/jboss/standalone/deployments/ramesh.war /tch/deploy.save/$date1/
EOF
