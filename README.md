
# TomaSh
A collection of aliases and functions that help you speed up your programmer's everyday life!

## Documentation

This project as three files:
- bash_alias
- bash_functions
- bash_envvar
  
### Bash Alias
The file bash_alias has three parts:
- COMMANDS
- SHORTCUT
- GIT
- DOCKER
- KUBERNETES

#### Commands
Mix of shell command to browse folder

#### Shortcut: 
There are shortcut to working folder.
I like to have each folder for:
 - codebase: Develop
 - project: my project's documentation files and schemas
 - tools: here put settings file for your sofwtare tools
Some example:
``` bash
alias dev='cdl ~/develop'
```
#### Git
A programmer types the same git command, sometimes long command, a lot of time in a day. 
There you go, a list of aliases of most common and repetitive Git commands.
Here some examples of most interesting alias (I skipped the obvius like git add or git status):
``` bash
#List the first 10 commit in the given format:
alias gcl='git log --pretty=format:"%h %cn %cd %s" -n 10'
```

``` bash
#Unstaged files
alias grt="git restore --staged"
```

#### Docker
A docker command usually is quite long (number of characters) has more than one option and more than one parameters. 
We are developers and we don't like repetitive things, so I try to wrap up some command.
One of the longest commad is
``` bash
alias dkps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Port}}"'
```
That command shows in a glace the most usefull information (id, docker image, name, status and port) of all docker container running.

To start up a docker compose just type:
``` bash
$dkcomp -d
```
rather than docker-compose up -d

#### Kuberntes
Same problem of docker...
The Kubernest CLI has a long command kubectl, so there you go:
``` bash
alias kc='kubectl'
```
And if I want to list all the pods?
``` bash
alias kclp='kc get pods'
```
### Bash functions
This files contains a list of command that are quite complex to alieses.

<work> in progess...</work>

## How to install
Rename the file from bash_[functions, alias, envart] to .bash_[functions, alias, envart] and copy this snippet in your .*rc file or profile and source it! Enjoy!

```bash
#########################
#     ALIAS
#########################
if [ -f ".bash_aliases" ]; then
	source .bash_aliases
fi

#########################
#      FUNCTION
#########################
if [ -f ".bash_functions" ]; then
	source .bash_functions
fi
```

## License

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)

  
## Authors

- [@motnip](https://www.github.com/motnip)

I created this readme with [readme.so](https://readme.so/) 



  
