# Makefile

SHELL := /bin/sh

QUESTION ?= "Write python 3 code to deploy a data lake in aws"

build:
	docker-compose build openai

run: build
	app/app.sh $(QUESTION)

generate: run
	@echo $(shell cat output.json | jq '.choices[].text') > output.md
	cat ./output.md
