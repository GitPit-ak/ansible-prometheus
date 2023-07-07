# DevOps Project

Welcome to an another project
So in this project we will launch two web server with one master server


Clone this repo into your master vm goto "../provision/ansible/" directory
run the master and web ansible playbook to setup the complete serup. 
# NOTE: Everything has to be in containerized. 

In master server we will setup:
- docker
- portainer
- prometheus 
- nginx
- grafana

web server:
- Setup one apache2 web server each
- portainer agent
- node exposed full & cadvisor in docker


Goals: 
- we want these two web server to load balancing with each other's using nginx
- monitor all the hosts with prometheus and grafana included docker container's monitoring.
- setup alerting for any error e.g host down, disk goes above 80% etc.

what we have to do achive this goal.
- vagrant will launch all three vm's (1 master, 2 web server)
- provision master server with ansible
- provision our both web server's using ansible playbook's

