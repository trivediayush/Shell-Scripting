#!/bin/bash

#$Revision: 001$
#$Date: 2023-07-28$
#$Author: Ayush Trivedi$
#$Time: 13:23 IST

#Variable to hold the directory path
BASE=/home/ayush/find_Commands
DAYS=10
DEPTH=1
RUN=0

#Check is the directory exists
if [ ! -d "$BASE" ]; then
    echo "Directory $BASE does not exist."
    exit 1
fi

#Create the archive directory if it does not exist
ARCHIVE_DIR="$BASE/archive"
if [ ! -d "$ARCHIVE_DIR" ]; then
    mkdir "$ARCHIVE_DIR"
    echo "Created archive directory: $ARCHIVE_DIR"
fi

#Find and archive files larger then 20 mb 
for i in `find "$BASE" -maxdepth $DEPTH -type f -size +20M`
do 
    if [ $RUN -eq 0 ];
    then
        echo "[$(date +%Y-%m-%d %H:%M:%S)] Archiving files larger than 20MB in $BASE"
        gzip $i || exit 1
        mv $i.gz "$ARCHIVE_DIR" || exit 1
        echo "Archived: $i to $ARCHIVE_DIR"
    fi
done
