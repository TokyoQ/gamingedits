#
# default target
#

## Show this help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | sed -e 's/:[^#]*##/ -- /' | sed 's/^##/\n##/'

## Generate README.md from the template
readme:
	utils/generate_readme.sh

## Create config.json file from template
twitconfig: 
	utils/generate_config.sh

## Run gamingedits in the container
gamingedits:
	sudo docker container run -d --mount type=bind,source=$(PWD)/config/config.json,target=/bankedits/config.json --mount type=bind,source=$(PWD)/config/ranges.json,target=/bankedits/ranges.json --name gamingedits tokyoq/bankedits

## Stop gamingedits
clean:
	sudo docker container stop gamingedits && \
	sudo docker container rm gamingedits
