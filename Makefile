# Makefile

SHELL := /bin/sh

QUESTION ?=

build:
	docker-compose build openai

run: build
	app/app.sh $(QUESTION)

generate: run
	@echo $(shell cat output.json | jq '.choices[].text') > output.md
	cat ./output.md
