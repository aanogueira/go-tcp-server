package: build push

compile:
	# Compiling software
	@go mod download
	@go build -o app .

build:
	# Building image
	@docker build \
		-t <REGISTRY_PATH>/go-tcp-server:latest \
		-f Dockerfile .

push:
	# Pushing to registry
	@docker push <REGISTRY_PATH>/go-tcp-server
