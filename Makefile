CONTAINER_NAME := race_user_sdk_container

ID ?=

checkID:
	@docker ps | grep "wenjiu"

init:
	@bash ./start_race.sh

login:
	@docker exec -it $(CONTAINER_NAME) bash

run: 
	@bash ./start_race.sh	

close:
	@bash ./stop_race.sh

rerun:
	@bash ./stop_race.sh
	@bash ./start_race.sh

update:
	@docker commit $(ID) wenjiu_uav-challenge:latest

.PHONY: checkID init login run close rerun update

