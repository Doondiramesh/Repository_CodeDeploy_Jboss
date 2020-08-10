su seprepo <<'EOF'
date1=`date +%m%d%Y-%H%M`
mkdir -p /tch/to_deploy/$date1
yes | cp -rf /tch/s3_bucket/configs /tch/to_deploy/$date1/
yes | cp -rf /tch/s3_bucket/builds /tch/to_deploy/$date1/

#### Copy from to_deploy to respective paths
yes |cp -rf /tch/to_deploy/$date1/configs/standalone-full-ha.xml /tch/jboss/standalone/configuration/standalone-full-ha.xml
#yes |cp -rf /tch/to_deploy/$date1/configs/logging.properties /tch/jboss/standalone/configuration/logging.properties
yes |cp -rf /tch/to_deploy/$date1/builds/ramesh.war /tch/jboss/standalone/deployments/ramesh.war

EOF
