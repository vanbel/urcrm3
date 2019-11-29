up: docker-up
down: docker-down
restart: docker-down docker-up
build: docker-build
stop: docker-stop
rm: docker-rm
rmi: docker-rmi

docker-up:
	docker-compose up
#	docker-compose up -d

docker-down:
	docker-compose down
#	docker-compose down --remove-orphans

docker-build:
	docker-compose up --build

docker-stop:
	docker stop $(docker ps -a -q)

docker-rm:
	docker rm $(docker ps -a -q)

docker-rmi:
    docker rmi $(docker images -q)


# docker exec -ti test-subject bash