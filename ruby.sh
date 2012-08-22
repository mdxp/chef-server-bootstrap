yum install -y ruby.x86_64 ruby-devel.x86_64 gcc.x86_64 gcc-c++.x86_64 automake autoconf make.x86_6

cd /tmp
wget http://production.cf.rubygems.org/rubygems/rubygems-1.6.2.tgz
tar zxf rubygems-1.6.2.tgz
cd rubygems-1.6.2
ruby setup.rb --no-format-executable

gem install ohai --no-rdoc --no-ri
gem install chef --no-rdoc --no-ri
