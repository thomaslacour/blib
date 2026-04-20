#!/usr/bin/env make

include /etc/environment

CONTAINER_IMAGE := hugomods/hugo
CONTAINER_ENGINE ?= podman
GIT_REPO = git@github.com:thomaslacour/blib.git

HUGO = $(CONTAINER_ENGINE) run --rm -v $(shell pwd):/src -p 0.0.0.0:1313:1313 $(CONTAINER_IMAGE)

all: help

# Display comment at the right of a target as a help message
# https://gist.github.com/prwhite/8168133?permalink_comment_id=3455873#gistcomment-3455873
.PHONY: help
help:  ##Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage: make <command> \033[36m\033[0m\n\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: setup
setup:  ##Setup the repo (git, container...)
	$(CONTAINER_ENGINE) pull $(CONTAINER_IMAGE)
	git remote set-url origin $(GIT_REPO)

.PHONY: site
site:  ##Serve the site
	$(HUGO) server --renderToMemory
