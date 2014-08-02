install:
	make install_project

install_project:
	if [ ! -d "../sharepear" ]; then git clone git@github.com:Sharepear/Sharepear.git ../sharepear; fi;

prod_provision:
	ansible-playbook -i hosts/prod playbook.yml -u ubuntu -vvvv
