#!/bin/bash
set -x

BACKUP_NAME="midas-hell-$(date +"%Y-%m-%d %H-%M-%S")"


cd ~/AppData/LocalLow/IronGate/Valheim/worlds

zip a "$BACKUP_NAME".zip *

git add .
git commit -m "BACKUP: $BACKUP_NAME"
git push
rm -r "$BACKUP_NAME".zip