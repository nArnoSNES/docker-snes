all:
	docker build . -t pvsneslib:4.0.1
	@echo Run add_alias.sh to create makesnes alias
