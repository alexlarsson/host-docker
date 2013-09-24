all: root.tar.xz
	sudo docker build .

root.tar.xz: create-root.sh
	sudo ./create-root.sh
	(cd root; sudo tar cJp *;) > root.tar.xz
