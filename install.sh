#!/bin/bash
# Purpose :
# vim: se ts=4 sw=4 ai:

script=$0
script_dir=${script%/*}
script=${script##*/}
SUFFIX=$(date +%y%m%d.%H%M%S)
logfile=/tmp/$script.$SUFFIX
verbose=--verbose

# Let unset variables cause an error
set -u

main()
{
echo Installing profile.d
install $verbose  --target-directory=/etc/profile.d --owner=root --mode=644 --compare $script_dir/profile.d/*
echo Installing bash_completion.d
install $verbose  --target-directory=/etc/bash_completion.d --owner=root --mode=644 --compare $script_dir/bash_completion.d/*
}

main 2>&1 | tee -a $logfile

