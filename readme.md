# OpenEdge scripts

## Purpose
Linux (bash) Scripts to share with the OE community
Moved to git from the [original](https://bitbucket.org/cverbiest/openedgescripts) using [this] (https://hedonismbot.wordpress.com/2008/10/16/hg-fast-export-convert-mercurial-repositories-to-git-repositories/)

## No warranty
This is a spare time project. Comments, through the Progress communities site, are welcomed. Chances are that it will take a while before there is a response.
I share this project in the hope, but without any warranty, that it can be useful for some-one. Maybe it can help as an example for writing your own autocomplete.

This project is written in bash

## About me
I'm Carl Verbiest, I work at [CCE nv](http://www.cce.be) as head of the tool development team. CCE started with Progress version 4, my first Progress experiences were with version 6.2.

# What to expect
## bash completion for some OpenEdge executables

Assuming that /tmp/sports.db exists, type

	prou[TAB]/t[TAB]s[TAB] [TAB]tr[TAB]b[TAB]
to get

	proutil /tmp/sports -C truncate bi

# Installation
## Requires
### bash\_completion
	yum install bash\_completion
## Using install
Execute install.sh

## Manually
Copy the files in bash\_completion.d to /etc/bash\_completion.d
Alternatively you can create links in /etc/bash\_completion.d pointing to the files

## Without the bash\_completion package
You probably don't need bash\_completion if you source the completion files in you bash profile 
	for file in /path/to/bash\_completion.d/*
	do
		. $file
	done


## Configuration
$DLC/bin in path

# Available autocompletion
* proadsv
* asbman
* proutil
* tcman, just started, list of commands only

## Todo's
* pro, mpro, _progres
* proutil options
* ...

## Won't do
* nsman, no longer used with PASOE

## Known issues
* uses oe11.3 options , doesn't check oe version
* some options don't work on RHEL 5, 
