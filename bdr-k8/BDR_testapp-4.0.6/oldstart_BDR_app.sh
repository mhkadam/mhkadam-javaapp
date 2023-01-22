#!/bin/bash

# Start a single BDR tier
startTier() {
   echo "Starting $1 on port $2"

   cmd="java -Xmx64m -Xms64m -javaagent:/opt/appdynamics/appagent/javaagent.jar \
-Dappdynamics.controller.hostName=erie-prod.saas.appdynamics.com \
-Dappdynamics.controller.port=443 \
-Dappdynamics.controller.ssl.enabled=true \
-Dappdynamics.agent.applicationName=BDR-Test \
-Dappdynamics.agent.tierName=3dTier \
-Dappdynamics.agent.nodeName=${HOSTNAME}Node1 \
-Dappdynamics.agent.accountName=erie-prod \
-Dappdynamics.agent.accountAccessKey=9saizhahtg21 \
-Dappdynamics.jvm.shutdown.mark.node.as.historical=true \
-Dappdynamics.agent.reuse.nodeName=true \
-Dappdynamics.agent.reuse.nodeName.prefix=${HOSTNAME} \
-Dhttp.port=$2 \
-jar /opt/BDR/BDR_testapp-4.0.6/testappserver.jar /opt/BDR/BDR_testapp-4.0.6/$1config.xml \
| tee /opt/BDR/BDR_testapp-4.0.6/logs/$1.log"
   echo $cmd

   eval $cmd
}

# Stop BDR processes in case they're already running
source /opt/BDR/BDR_testapp-4.0.6/stop_BDR_app.sh

# Start BDR tiers
startTier "3dTier" "10030" &

startTier "2ndTier" "10020" &

startTier "1stTier" "10010,10011" &

# Start the machine agent for BDR
#java -Dappdynamics.controller.hostName=columntnfr.saas.appdynamics.com -Dappdynamics.controller.port=443 -Dappdynamics.agent.applicationName=BigDealRetail -jar /home/ravello/agent/ver4.3.5.13/javaagent.jar &
