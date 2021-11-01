help:
	cat ./Makefile

setup:
	docker-compose stop; docker-compose rm -f; docker-compose build; sudo chmod +x scripts/*;

run:
	docker-compose up -d

stop:
	docker-compose stop

cron:
	sudo chmod +x scripts/*; scripts/add_to_cron.sh;

memory:
	ps -o pid,user,%mem,command ax | sort -b -k3 -r | head -3

logs:
	docker logs minecraft-dofitos_minecraft_1
