#!/bin/bash

function mynd(){
	gh_token=$(<gh_token.txt)

	if [ "$1" = "build" ]; then
		if [ $# -eq 3  ]; then
			docker build --build-arg GH_TOKEN=$gh_token -t $2 . 
			exit
		else
			echo "The build action expects 1 arguments" 
			exit
		fi
	fi

}


