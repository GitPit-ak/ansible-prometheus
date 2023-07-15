# DevOps IaC Project

![digram drawio (5)](https://github.com/GitPit-ak/ansible-prometheus/assets/44562876/9c0af54c-3235-4701-8027-e7ecfaf00e15)
# Automated web server setup with ansible. (Locally with vm's)
Welcome to an another project
In this project, we will automate the setup of a web server environment using Ansible. We will utilize Vagrant to launch three virtual machines: one master server and two web servers. The master server will be provisioned using Ansible to set up Prometheus monitoring and nginx load balancing. Afterwards, we will provision both web servers using Ansible playbooks.

By automating the setup process, we can ensure consistent and efficient deployment of the web server environment. Ansible will handle the configuration and installation of Prometheus for monitoring the servers and nginx for load balancing. Vagrant provides a convenient way to manage the virtual machines locally.

Overall, this project aims to streamline the setup and configuration of a web server environment by leveraging Ansible's automation capabilities, Vagrant for VM management, Prometheus for monitoring, and nginx for load balancing.

Clone this repo into your master vm goto "../provision/ansible/" directory
run the master and web ansible playbook to setup the complete serup. 
# NOTE: Everything has to be in containerized. 

In master server we will setup:
- docker
- portainer-CE
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

Flow of execution to achive this goal.
- vagrant will launch all three vm's (1 master, 2 web server)
- provision master server with ansible
- provision our both web server's using ansible playbook's

