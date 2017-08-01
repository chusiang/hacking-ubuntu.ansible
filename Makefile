.PHONY: main boot run clean

main: run

init:
	if [ ! -d "/tmp/ansible-retry/" ]; then mkdir "/tmp/ansible-retry/"; fi
	ansible-galaxy install -f -p roles -r requirements.yml

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f setup.retry /tmp/ansible-retry
	vagrant destroy

