install:
	make install_project
	make install_roles

install_project:
	if [ ! -d "../sharepear-front" ]; then git clone git@github.com:Sharepear/sharepear-front.git ../sharepear-front; fi;
	if [ ! -d "../sharepear-back" ]; then git clone git@github.com:Sharepear/sharepear-back.git ../sharepear-back; fi;

install_roles:
	ansible-galaxy install -i Stouts.iptables,1.0.0 --force
	ansible-galaxy install -i nickjj.fail2ban,v0.1.2 --force
	ansible-galaxy install -i kosssi.ssh,v1.0.0 --force
	ansible-galaxy install -i kosssi.apt,v1.0.0 --force
	ansible-galaxy install -i kosssi.php,v1.0.0 --force
	ansible-galaxy install -i kosssi.composer,v1.0.3 --force
	ansible-galaxy install -i kosssi.apache,v1.0.0 --force
	ansible-galaxy install -i Ansibles.mysql,v1.0.2 --force

prod_provision:
	ansible-playbook -i hosts/prod playbook.yml -u ubuntu -vvvv
