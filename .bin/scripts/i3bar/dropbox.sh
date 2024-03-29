#!/bin/bash
# Get the status from command line applet
DROP_STATUS="$(dropbox status)"

# Define comparison strings
SYNCED="Up to date"
STOPPED="Dropbox isn't running!"
if [ "$DROP_STATUS" == "$STOPPED" ]; then
	echo OFF # Long message
	echo OFF # Short message
	echo "#FF0000" # Red when off
elif [ "$DROP_STATUS" == "$SYNCED" ]; then
	echo Synced # Long message
	echo Synced # Short message
	echo "#00ccFF" # Cyan when synced
else
	echo Syncing # Long message
	echo Syncing # Short message
	echo "#FFFF00" # Yellow when syncing
fi
