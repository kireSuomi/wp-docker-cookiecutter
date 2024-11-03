#!/bin/bash

RUNNING_CONTAINERS=$(docker ps -q)
if [ "$RUNNING_CONTAINERS" != "" ]; then
	echo ""
	echo "You have some running containers already:"
	docker ps

	echo ""
	read -p "Want to kill them? [n (y for yes)]:" killothers

	if [ "$killothers" = "y" ] || [ "$killothers" = "Y" ]; then
		echo ""
		echo "Killing already running containers..."
		docker stop $(docker ps -q)
	fi
fi


echo ""
echo "Starting containers..."


if [ -e "docker-compose.yaml" ]; then
    echo "Info: Using overrides from docker-compose.yaml."
    docker compose up --build -d
    docker compose logs -f
fi

# Open localhost:80 in the default web browser
xdg-open http://localhost:80