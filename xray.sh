#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fd0ae2b3-a559-499c-845a-dd557016719b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

