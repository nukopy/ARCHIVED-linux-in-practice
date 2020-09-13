.PHONY: up
up:
	vagrant up

.PHONY: st
st:
	vagrant status

.PHONY: vsh
vsh:
	vagrant ssh

.PHONY: vht
vht:
	vagrant halt
