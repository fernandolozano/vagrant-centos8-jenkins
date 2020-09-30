Vagrant.configure("2") do |config|

  config.vm.box = "centos/8"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell" do |shell|
    shell.path = "jenkins.sh"
  end
end
