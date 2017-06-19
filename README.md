[![License](https://img.shields.io/badge/license-GPLv3-brightgreen.svg)](LICENSE)

# Overview: pgporada.vagrant

One less thing for me to have to go out to the internet to grab when setting up my dev machine(s).

- - - -
# Role Variables

Installs the specified version of [Hashicorp Vagrant](https://www.vagrantup.com/downloads.html).

    vagrant_version: 1.9.5

- - - -
# Example Playbook

To run the local playbook, issue the following command.

    ansible-playbook local_playbook.yml -b -K

To use this role in another playbook

    cat << EOF > some_playbook.yml
    ---
    - hosts: localhost
      connection: local
      roles:
        - pgporada.vagrant
    ...
    EOF
    ansible-playbook some_playbook.yml -b -K

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need a ruby environment with gem and bundler for these tests.

	bundle update
	bundle install
	bundle exec kitchen create
   	bundle exec kitchen converge
   	bundle exec kitchen verify
	bundle exec kitchen destroy

- - - -
# License and Author Information
GPLv3

2017 - Phil Porada

- - - -
# Theme Song
[Phil Pratt - Star Wars Dub](https://www.youtube.com/watch?v=d6b1j-FncOs)
