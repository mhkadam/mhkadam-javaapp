./stop_BDR.sh
rm nohup.out 2> /dev/null
nohup java -javaagent:"appagent/javaagent.jar" -Dappdynamics.agent.nodeName="node1" -Dappdynamics.agent.tierName="Tier1" -Xmx128m -Xms128m -Dhttp.port=10010,10011 -jar testappserver.jar 1stTierconfig.xml &
nohup java -javaagent:"appagent/javaagent.jar" -Dappdynamics.agent.nodeName="node2" -Dappdynamics.agent.tierName="Tier2" -Xmx128m -Xms128m -Dhttp.port=10020 -jar testappserver.jar 2ndTierconfig.xml &
nohup java -javaagent:"appagent/javaagent.jar" -Dappdynamics.agent.nodeName="node3" -Dappdynamics.agent.tierName="Tier3" -Xmx128m -Xms128m -Dhttp.port=10030 -jar testappserver.jar 3dTierconfig.xml &