=CHANGE LOG=
2015-05-26 - Derrek Young (Derrek.Young@appdynamics.com)
-Upgraded agent version to 4.0.6
-Move the app/tier/node information form controller-info.xml to the command line
-Modifyed start scripts for Linux and Windows
-Added stop script for Linux. Added status check script for Linux


=Big Deal Retail=

==To Start==
start_BDR_app.sh - Stops any existing BDR processes, and starts 3 tiers and the machine agent.

start_BDR_app.bat - Starts 3 tiers and the machine agent.

==To Stop==
stop_BDR_app.sh - Stops any existing BDR processes.

==Status==
appd-status.sh - Outputs the status of the various Controller services. Run this on the Controller host.
