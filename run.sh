#/bin/bash

apt-get -q update
apt-get install -qy git bundler


# Install all Ruby Gems from Gemfile
bundle install

# Inside installed bundles, run librarian-puppet
# & install all Puppet modules from Puppetfile
bundle exec librarian-puppet install

# Apply 'lynis' class to this machine, looking for modules @ /vagrant/modules
puppet apply -e 'include ::lynis' --modulepath=/vagrant/modules
