#!/bin/bash

ALIAS_DIR=$( dirname $0 )
ALIASES=('branch' 'cherrypick' 'commit' 'merge' 'pull' 'push' 'rebase' 'reset' 'stash' 'status')
if [ -z $1 ]
then
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
