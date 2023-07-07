Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true

  config.vm.define "master" do |master|
    master.vm.box = "generic/ubuntu2204"
    master.vm.hostname = "master"
    master.vm.network "public_network", ip: "192.168.1.55"
    master.vm.provision  "shell", path: "./provision/motd.sh"
    master.vm.provision  "shell", path: "./provision/docker.sh"
    master.vm.provision "shell", inline: <<-SCRIPT
    sudo apt update
    sudo apt install software-properties-common -y
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible -y
    sudo apt install git -y
    SCRIPT
    # master.vm.synced_folder "./provision/", "/provision"
    master.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      end
  end

  config.vm.define "web01" do |web01|
    web01.vm.box = "generic/ubuntu2204"
    web01.vm.hostname = "web01"
    web01.vm.network "public_network", ip: "192.168.1.56"
    web01.vm.provision  "shell", path: "./provision/motd.sh"
    web01.vm.provision  "shell", path: "./provision/docker.sh"
    # web01.vm.synced_folder "./provision/", "/provision"
    web01.vm.provider "virtualbox" do |vb|
      vb.name = "web01"
      end
  end


  config.vm.define "web02" do |web02|
    web02.vm.box = "generic/ubuntu2204"
    web02.vm.hostname = "web02"
    web02.vm.network "public_network", ip: "192.168.1.57"
    web02.vm.provision  "shell", path: "./provision/motd.sh"
    web02.vm.provision  "shell", path: "./provision/docker.sh"
    # web02.vm.synced_folder "./provision/", "/provision"
    web02.vm.provider "virtualbox" do |vb|
      vb.name = "web02"
      end
  end

end
