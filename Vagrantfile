Vagrant.configure("2") do |config|
  
  #standaard lijn voor box te setten
  config.vm.box = "centos/7"
  config.vm.provision "shell", path: "scriptinstall.sh"
  config.vm.define "server" do |server|
	server.vm.hostname = "server"
	server.vm.provision "shell", path: "scriptserver.sh"
	server.vm.network "private_network", ip: "192.168.1.2", virtualbox__intnet: "mynetwork"
  end

  config.vm.define "agent1" do |agent1|
	agent1.vm.hostname = "agent1"
	agent1.vm.provision "shell", path: "scriptagent.sh"
	agent1.vm.network "private_network", ip: "192.168.1.3", virtualbox__intnet: "mynetwork"
  end
  
  config.vm.define "agent2" do |agent2|
	agent2.vm.hostname = "agent2"
	agent2.vm.provision "shell", path: "scriptagent2.sh"
	agent2.vm.network "private_network", ip: "192.168.1.4", virtualbox__intnet: "mynetwork"
  end
end