.PHONY: setup
setup:
	git set-url origin git@github.com:thomaslacour/blib.git

.PHONY: site
site:
	hugo server --renderToMemory
