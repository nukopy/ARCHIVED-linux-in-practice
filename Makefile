.PHONY: up
up:
	vagrant up

.PHONY: st
st:
	vagrant status

.PHONY: vsh
vsh:
	vagrant ssh

.PHONY: ht
ht:
	vagrant halt

.PHONY: bl
bl:
	vagrant box list
