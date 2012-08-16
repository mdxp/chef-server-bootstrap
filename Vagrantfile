Vagrant::Config.run do |config|
  config.vm.box_url = "http://vagrant-promet.s3.amazonaws.com/centos-63.box"
  config.vm.box = "centos-63"
  config.vm.host_name = "chefserver"

  config.vm.customize ["modifyvm", :id, "--memory", "1024"]
  #config.vm.network :hostonly, "33.33.33.3"

  config.vm.forward_port 4000, 4000
  config.vm.forward_port 4040, 4040
  config.vm.forward_port 443, 4433

  #config.vm.provision :chef_solo do |chef|
  #  chef.cookbooks_path = "cookbooks"
  #  chef.data_bags_path = "data_bags"
  #  chef.roles_path = "roles"
  #  chef.add_role("vagrant")
  #  chef.add_recipe "build-essential"
  #  chef.log_level = :debug
  #end
end
