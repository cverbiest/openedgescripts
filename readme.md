# OpenEdge scripts

## Purpose
Linux (bash) Scripts to share with the OE community

## No warranty
This is a spare time project. Comments, through the Progress communities site, are welcomed. Chances are that it will take a while before there is a response.
I share this project in the hope, but without any warranty, that it can be useful for some-one. Maybe it can serve as an example how certain tasks can be automated.

This project is written in bash

## About me
I'm Carl Verbiest, I work at [CCE nv](http://www.cce.be) as head of the tool development team. CCE started with Progress version 4, my first Progress experiences were with version 6.2.

# Installation
## Requires
### bash_completion
	yum install bash_completion
## Using install
Execute install.sh

## Manually
Copy the files in bash_completion.d to /etc/bash_completion.d
Alternatively you can create links in /etc/bash_completion.d pointing to the files

## Without the bash_completion package
You don't bash_completion if you source the completion files in you bash profile 
	for file in /path/to/bash_completion.d/*
	do
		. $file
	done


## Configuration
$DLC/bin in path

# Available autocompletion
* proadsv
* asbman

## Todo's
* nsman
* proutil
* ...

## Known issues
* uses oe11.3 options , doesn't check oe version

