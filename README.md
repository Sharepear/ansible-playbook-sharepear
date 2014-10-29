# ansible-playbook-sharepear

Create server for Sharepear website.

## Install

Clone repository:

    git clone git@github.com:Sharepear/ansible-playbook-sharepear.git
    git clone git@github.com:Sharepear/Sharepear.git

Download Ansible roles:

    ansible-galaxy install -r requirements.txt --force

## Development

Launch the vagrant box

    vagrant up

## Prod

Launch provisioning

	ansible-playbook -i hosts/prod playbook.yml -vvvv

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
