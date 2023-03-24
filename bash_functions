#!/bin/bash

# ---------------------------#
# 	TomaSh bashrc function	 #
# ---------------------------#

######################
#	BASH function	#
######################
#Go to a folder and list the content in one command
function cdl { cd $1; ls;} 

#Function that run grep in ignore case mode -i
# and -l
function gl {
	position=$PWD;
	if [ -z $2 ]
		then
			searchObj='*'
		else
			$searchObj=$2	
	fi
	
    cd $PWD
	#searchIn="$position/$searchObj";
    grep -il $1 $searchObj;
}

#Function run grep in ignore case mode -i and show the number of matches -n
function gn { 
	position=$PWD;
	if [ -z $2 ]
		then
			searchObj='*'
		else
			$searchObj=$2
	fi
	cd $PWD
	#searchIn="$position/$searchObj";
	grep -in $1 $searchObj;
}

#####################
#      NGROK        #
#####################
#Example: if you use ngrock https://ngrok.com/ 
#Sometimes your configuration is too complex to be expressed in command line options. 
#ngrok supports an optional, extremely simple YAML configuration file which provides you 
#with the power to run multiple tunnels simultaneously as well as to tweak some of ngrok's more arcane settings.
#About this take a look at .bash_functions.sh under the section NGROK
#function ngk {
#   ngrok http -config=/path/to/ngrok.yaml $1
#}

######################
#	GIT function	#
######################
#Simple command to list files' name of a commit
function gshowfile {
 git show --pretty=short --name-only $1
}

function gps {
 	git push --set-upstream origin $(git branch --show-current)
}

########################
# DOCKER FUNCTIONS     #
#######################
#Stops all the containers
function dkstop {
 docker container stop $(docker container ls -q)
}
#Stops a container id and remove the container and the image
function dkclean {
 docker container stop $1 && docker container rm $1 && docker image rm $2
}

#Access the container in TTY mode
function dkexe {
 docker container exec -ti $1 $2
}

#Show the container's log in flush mode 150 lines at time
function dklog {
 docker container logs -f --tail 150 $1
}

#Start a docker compose 
function dkcompose {
  if [ -z $1 ]
  	then 
		file='.'
 	else
 		file=$1
  fi

  docker-compose -f $file up $2
}
###########################
#       KUBERNETES        #
###########################
function kcluster {
 az aks get-credentials --name $1 --resource-group learnResourceGroup
}

#Access a pod in TTY mode and run the command
function kcexe {
 kc exec -ti $1 -- $2
}

#Describe a resource
function kcdesc {
 kc describe $1 $2 $3
} 

#Show resource logs in flus mode and tail mode
function kclog {
 kc logs -f --tail $1 $2
}
