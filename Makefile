setup:
	docker-compose stop; docker-compose rm -f; rm -rf minecraft-data; docker-compose build;

run:
	docker-compose up -d

stop:
	docker-compose stop

cron:
	sudo chmod +x scripts/*; scripts/add_to_cron.sh;
