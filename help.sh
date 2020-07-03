#!/bin/bash

ALIAS_DIR=$( dirname $0 )
ALIASES=('branch' 'cherrypick' 'commit' 'merge' 'pull' 'push' 'rebase' 'reset' 'stash' 'status' 'submodule')
if [ -z $1 ]
then
echo "====== ART'S GIT ALIASES ======"
echo "Type 'gitaliases {operation}' to see the aliases for a given operation"
echo "    eg. 'gitaliases commit'"
echo ''
echo ''
for ALIAS in ${ALIASES[@]}
do
cat $ALIAS_DIR/$ALIAS.alias
echo ''
echo ''
done
exit
else
cat $ALIAS_DIR/$1.alias
fi
