#!/bin/bash

function mynd(){
	
	if [ "$1" = "version" ]; then
		echo "mynd 0.6.9"
        echo "Made by TheWisePigeon <https://github.com/TheWisePigeon>"
	fi
	
	if [ "$1" = "update" ]; then
        echo "⏬ Pulling latest updates"
		current_dir=$PWD
		cd "$HOME/mynd"
		git pull > /dev/null
		cd "$current_dir"
        echo "Mynd is up to date. Restart your shell to use the latest version"
	fi

	if [ "$1" = "build" ]; then
		if [ $# -eq 2  ]; then
			docker build -t $2 . 
			return
		else
			echo "The build action expects 1 argument" 
			return
		fi
	fi

	if [ "$1" = "new" ]; then
		if [ "$2" = "kitty" ]; then
            if [[ $# -ge 4 ]]; then
                port_binding="-p $4"
            fi
            echo "🔃 Spinning up container and volume"
            container_id=$(docker run $port_binding -v $3:/data -dit --name $3 kitty)
            if [ $? -ne 0 ]; then
                echo "❌ Failed to create container"
                echo "$container_id"
                return
            fi
            echo "✅ Container ready"
            echo "🔗 Connecting to container"
            docker exec -it $container_id  bash
		fi
	fi

}


