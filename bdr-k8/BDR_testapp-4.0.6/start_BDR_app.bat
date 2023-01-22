start java -javaagent:AppServerAgent\javaagent.jar -Dappdynamics.controller.hostName=localhost -Dappdynamics.controller.port=8090 -Dappdynamics.agent.applicationName=BigDealRetail -Dappdynamics.agent.tierName=3dTier -Dappdynamics.agent.nodeName=3dTierNode1 -Dappdynamics.agent.uniqueHostId=localhost -Dhttp.port=10030 -Xmx32m -jar testappserver.jar 3dTierconfig.xml

start java -javaagent:AppServerAgent\javaagent.jar -Dappdynamics.controller.hostName=localhost -Dappdynamics.controller.port=8090 -Dappdynamics.agent.applicationName=BigDealRetail -Dappdynamics.agent.tierName=2ndTier -Dappdynamics.agent.nodeName=2ndTierNode1 -Dappdynamics.agent.uniqueHostId=localhost -Dhttp.port=10020 -Xmx32m -jar testappserver.jar 2ndTierconfig.xml

start java -javaagent:AppServerAgent\javaagent.jar -Dappdynamics.controller.hostName=localhost -Dappdynamics.controller.port=8090 -Dappdynamics.agent.applicationName=BigDealRetail -Dappdynamics.agent.tierName=1stTier -Dappdynamics.agent.nodeName=1stTierNode1 -Dappdynamics.agent.uniqueHostId=localhost -Dhttp.ports=10010,10011 -Xmx32m -jar testappserver.jar 1stTierconfig.xml

start java "-Dappdynamics.controller.hostName=localhost" "-Dappdynamics.controller.port=8090" "-Dappdynamics.agent.applicationName=BigDealRetail" "-Dappdynamics.agent.uniqueHostId=localhost" -jar MachineAgent\machineagent.jar
