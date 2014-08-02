install:
	make install_project

install_project:
	if [ ! -d "../sharepear" ]; then git clone git@github.com:Sharepear/Sharepear.git ../sharepear; fi;
