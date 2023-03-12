#!/bin/bash

# ---------------------------#
# 	TomaSh bashrc alias		 #
# ---------------------------#

######################
#	COMMAND	#
######################
#Shortcut to home
alias h='cd ~'
#Clean the screen
alias c='clear'
#classify files in colour
alias ls='ls -1'
#Show files detilas
alias ll='ls -1lh'
#Show hiden file only
alias la='ls -1a'
#List files orderd by time
alias lt='ls -1lht'
#List files and show size in byte
alias lf='ls -lhF'
#Go bach of one folder
alias bk='cd ../'
#greps
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

alias vim='mvim'
##########################
#	SHORTCUT PATH	#
##########################

#There are shortcut to working folder
#I like to have each folder for:
# - codebase: Develop
# - project: my project's documentation files and schemas
# - tools: here put settings file for your sofwtare tools
#alias dev='cdl ~/develop'
#alias pro='cdl ~/projects'
#-----------------------------
#Example: if you use ngrock https://ngrok.com/ 
#Sometimes your configuration is too complex to be expressed in command line options. 
#ngrok supports an optional, extremely simple YAML configuration file which provides you 
#with the power to run multiple tunnels simultaneously as well as to tweak some of ngrok's more arcane settings.
#About this take a look at .bash_functions.sh under the section NGROK
#-----------------------------
#alias tls='cdl ~/tools'
#####################
#	ALIAS GIT	#
#####################

alias gs="git status"
alias gitc="git commit"
alias gcv="git commit -v"
#List the first 10 commit in the given format:
alias gcl='git log --pretty=format:"%h %cn %cd %s" -n 10'
#Shows files edited by commit
alias gff='git log --name-status origin/master..'
#List commits in the given format :
alias gln='git log --pretty=format:"%h %cn %cd %s"'
alias gc='git checkout'
#List all the branche in local
alias gbl='git branch --list'
alias gb="git branch"
alias gd="git diff"
alias ga="git add"
alias gf="git fetch"
alias gp="git push"
#Unstaged files
alias grt="git restore --staged"
#Reset all the changes
alias grh="git reset --hard"
#Reset all the changes and put them in staged status
alias grs="git reset --soft"
alias grm="git rebase master"
########################
#    DOCKER            #
########################
alias dknet="docker login "
alias dkinsp="docker inspect "
alias dkps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
#List Docker images
alias dkils="docker image ls -a"
#List Docker containers
alias dkcls="docker container ls -a"
alias dkcomp="docker-compose up"
#########################
#     KUBERNETES        #
#########################
alias kc='kubectl'
#list pods
alias kclp='kc get pods'
#list services
alias kcls='kc get svc'
#List persisten volume
alias kclv='kc get pv'
#List persisten volume claims
alias kclvc='kc get pvc' 
#List configmaps
alias kccm='kc get configmaps'
#Open a port forward. 
#Map the MongoDB's pod port 27017 on local port 27017
#Example: kcpf mongo-0 27021:27017
alias kcpf='kubectl port-forward'
#########################
#     KUBERNETES        #
#########################
#gradle Spring Boot run
alias gbr='gradle bootRun'
