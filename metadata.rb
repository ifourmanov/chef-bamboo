name              "bamboo"
maintainer        "Brian Flad"
maintainer_email  "bflad@wharton.upenn.edu"
license           "Apache 2.0"
description       "Installs/Configures Atlassian bamboo"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.7.0"
recipe            "bamboo", "Installs/configures Atlassian bamboo"
recipe            "bamboo::apache2", "Installs/configures Apache 2 as proxy (ports 80/443)"
recipe            "bamboo::database", "Installs/configures MySQL/Postgres server, database, and user for bamboo"
recipe            "bamboo::linux_standalone", "Installs/configures bamboo via Linux standalone archive"
recipe            "bamboo::tomcat_configuration", "Configures bamboo's built-in Tomcat"
recipe            "bamboo::windows_standalone", "Installs/configures bamboo via Windows standalone archive"

%w{ amazon centos redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ apache2 database mysql mysql_connector postgresql }.each do |cb|
  depends cb
end

%w{ java }.each do |cb|
  suggests cb
end
