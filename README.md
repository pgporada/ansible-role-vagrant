![pgporada.vagrant](https://img.shields.io/badge/role-pgporada.vagrant-yellow.svg)
[![License](https://img.shields.io/badge/license-GPLv3-brightgreen.svg)](LICENSE)
[![](https://img.shields.io/badge/Supports%20Vagrant%20Version-2.0.1-blue.svg)](https://github.com/hashicorp/vagrant/blob/v2.0.1/CHANGELOG.md)

# Overview: pgporada.vagrant

One less thing for me to have to go out to the internet to grab when setting up my dev machine(s).

- - - -
# Role Variables

Installs the specified version of [Hashicorp Vagrant](https://www.vagrantup.com/downloads.html).

    vagrant_version: 2.0.1

- - - -
# Example Playbook

To run the local playbook, issue the following command.

    ansible-playbook local_playbook.yml -b -K

To use this role in another playbook

    cat << EOF > some_playbook.yml
    ---
    - hosts: localhost
      connection: local
      vars:
        vagrant_version: 2.0.1
      roles:
        - pgporada.vagrant
    ...
    EOF
    ansible-playbook some_playbook.yml -b -K

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need a ruby environment with gem and bundler for these tests.

    # This takes care of twiddling all the bits that need to be updated when bumping the terraform version
    ./update_automagic.sh x.x.x

    # This will run your terraform update through the test system
	bundle update
	bundle install
	bundle exec kitchen create
   	bundle exec kitchen converge
   	bundle exec kitchen verify
	bundle exec kitchen destroy

- - - -
# License and Author Information
GPLv3

(C) ]Phil Porada](https://philporada.com) 2017 - philporada@gmail.com

- - - -
# Theme Song
[Phil Pratt - Star Wars Dub](https://www.youtube.com/watch?v=d6b1j-FncOs)
