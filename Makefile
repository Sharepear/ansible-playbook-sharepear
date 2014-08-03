install:
	make install_project
	make install_roles

install_project:
	if [ ! -d "../sharepear" ]; then git clone git@github.com:Sharepear/Sharepear.git ../sharepear; fi;

prod_provision:
	ansible-playbook -i hosts/prod playbook.yml -u ubuntu -vvvv

install_roles:
	ansible-galaxy install -i Stouts.iptables,1.0.0 --force
	ansible-galaxy install -i nickjj.fail2ban,v0.1.2 --force
	ansible-galaxy install -i kosssi.ssh,v1.0.0 --force
	ansible-galaxy install -i kosssi.apt,v1.0.0 --force
	ansible-galaxy install -i kosssi.php,v1.0.0 --force
