.PHONY: build run
build:
	#docker pull php:8.4.7-cli-bookworm
	@docker build -t console-skeleton .

deps:
	@docker run --rm -it -v .:/app -w /app console-skeleton composer install

run: build
	#docker run --rm -it -v .:/app -w /app php:8.4.7-cli-bookworm bin/console
	@docker run --rm -it -v .:/app -w /app console-skeleton bin/console

shell:
	@docker run --rm -it -v .:/app -w /app console-skeleton bash

