puppet-lynis
============

Installs CISOfy Lynis onto Ubuntu

[![Build Status](https://travis-ci.org/christopherhatton/puppet-lynis.svg)](https://travis-ci.org/christopherhatton/puppet-lynis)

## Requirements

Ruby >= v1.9.3
Ubuntu 14.04 LTS

## Usage

To use simply include the following in your manifest:
```puppet
class { 'lynis': }
```

Or to apply locally run the following as root:
```shell
puppet apply -e "include ::lynis"
```
