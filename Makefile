PRJ	?= go-thinkering

help:			## Print available actions
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

compose-up:		## Start docker-compose
	@docker-compose up

compose-up-build:		## Start docker-compose and force rebuild
	@docker-compose up --build