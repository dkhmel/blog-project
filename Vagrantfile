Vagrant.configure("2") do |config|
  config.vm.hostname = "blog.dev"
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "10.0.0.10"
  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/var/www/symfony_demo/current", type: "nfs"

  config.vm.provider "blog" do |v|
    v.name = "blog"
    v.customize ["modifyvm", :id, "--cpuexecutioncap", 100]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--cpus", 1]
  end
end