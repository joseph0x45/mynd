#!/bin/bash

function mynd(){
	
	if [ "$1" = "version" ]; then
		echo "mynd v-0.0.1"
	fi
	
	if [ "$1" = "update" ]; then
		current_dir=$PWD
		cd "$HOME/mynd"
		git pull
		cd "$current_dir"
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
			docker run  -v $3:/data -p 5173:5173 -dit --name $3 kitty
		fi
	fi

}


