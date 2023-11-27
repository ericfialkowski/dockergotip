DOCKER_IMAGE_NAME=gotip
DOCKER_REGISTRY=localhost

build:
	docker build --no-cache -t ${DOCKER_IMAGE_NAME} .

clean:
	docker image rm ${DOCKER_IMAGE_NAME}

publish:
	docker image tag ${DOCKER_IMAGE_NAME}:latest ${DOCKER_REGISTRY}:5000/${DOCKER_IMAGE_NAME}