Vagrant.configure("2") do |config|

  config.ssh.insert_key = false
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"] 
  end
    # Application server 1.
  config.vm.define "app1" do |app|
    app.vm.hostname = "app1.dev"
    app.vm.box = "generic/ubuntu2004"
    app.vm.network :private_network, ip: "192.168.60.4"
  end
    # Application server 2.
  config.vm.define "app2" do |app|
    app.vm.hostname = "app2.dev"
    app.vm.box = "generic/ubuntu2004"
    app.vm.network :private_network, ip: "192.168.60.5"
  end
    # Application server 3.
  config.vm.define "app3" do |db|
    db.vm.hostname = "app3.dev"
    db.vm.box = "generic/ubuntu2004"
    db.vm.network :private_network, ip: "192.168.60.6"
  end
end
