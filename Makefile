setup:
	python3 -m venv .venv
	pip install ansible
	git submodule update --init --recursive

up:
	.venv/bin/ansible-playbook main.yaml -i 127.0.0.1, -e 'ansible_python_interpreter=/usr/bin/python3' -K