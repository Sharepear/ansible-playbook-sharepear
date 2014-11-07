# ansible-playbook-sharepear

Create server for Sharepear website.

## Install

Clone repository:

    git clone git@github.com:sharepear/ansible-playbook-sharepear.git
    git clone git@github.com:sharepear/sharepear.git

Download Ansible roles:

    ansible-galaxy install -r requirements.txt --force

## Development

Add dev host

    sudo ansible localhost -m lineinfile -a "dest=/etc/hosts regexp='^199\.199\.199\.199' line='199.199.199.199 sharepear.dev'"

Launch the vagrant box

    vagrant up

## Prod

Decrypt vault-password file

    gpg --output vault-password.txt --decrypt vault-password.txt.gpg

Launch provisioning

    ansible-playbook -i hosts/prod site.yml -vvvv --vault-password-file vault-password.txt

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
