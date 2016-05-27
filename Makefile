##
# Makefile for development environments
##

devel: Dockerfile
	@docker build -t activatedgeek/azure-cli:devel .

run:
	@docker run --rm \
		-v $(shell pwd)/.azure:/root/.azure:rw \
		activatedgeek/azure-cli:devel \
		$(filter-out $@,$(MAKECMDGOALS))

%:
	@:
