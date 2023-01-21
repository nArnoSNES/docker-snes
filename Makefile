all: docker-image

pvsneslib:
	curl -sSLO https://github.com/alekmaul/pvsneslib/releases/download/4.0.1/Linux-x64-401-release.zip
	unzip Linux-x64-401-release.zip
	tar xvf pvsneslib-Linux-x64.tar.gz
	rm -f Linux-x64-401-release.zip pvsneslib-Linux-x64.tar.gz 

docker-image: pvsneslib
	docker build . -t pvsneslib:4.0.1
	@echo Run add_alias.sh to create makesnes alias

clean:
	- docker rmi --force pvsneslib:4.0.1

dist-clean:
	- rm -rf pvsneslib
