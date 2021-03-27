#!/bin/bash
set -x

BACKUP_NAME="midas-hell-$(date +"%Y-%m-%d %H-%M-%S")"


cd ~/Desktop/valheim-dedicated-server

cp -r AppData/LocalLow/IronGate/Valheim/worlds/* ~/Desktop/valheim-dedicated-server


zip a "$BACKUP_NAME".zip *

git add .
git commit -m "BACKUP: $BACKUP_NAME"
git push
rm -r "$BACKUP_NAME".zip