#!/bin/bash


FILE_NAME="ssh-list.json"
DIR_NAME="/path/to/folder"

 
sed -i "s|PATH_TO_JSON=\".*\"|PATH_TO_JSON=\"$DIR_NAME/$FILE_NAME\"|" sshmgr

apt-get update && apt-get -y install jq sshpass whiptail

if [ ! -d "$DIR_NAME" ]; then

   mkdir -p $DIR_NAME
   	
fi

cp ssh-list.json  $DIR_NAME/$FILE_NAME
cp sshmgr /usr/bin/sshmgr

