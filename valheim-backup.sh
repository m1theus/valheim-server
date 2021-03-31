#!/bin/bash
set -x

BACKUP_NAME="midas-hell-$(date +"%Y-%m-%d %H-%M-%S")"

cd ~/Desktop/valheim-dedicated-server

rm -r midas-hell-2021* Dedicated* Midas*

cp -r ~/AppData/LocalLow/IronGate/Valheim/worlds/* ~/Desktop/valheim-dedicated-server

zip a "$BACKUP_NAME".zip *

git add .
git commit -m "BACKUP: $BACKUP_NAME"
git push