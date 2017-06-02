#!/bin/bash

CONFIG="$JSTORM_HOME/conf/storm.yaml"
##CONFIG="test.log"
##if [ ! -f "$CONFIG" ]; then
##    cat << EOF > "$CONFIG"
##storm.zookeeper.servers: $1
##if [ -n $3 ]; then
  
##fi
##nimbus.host: $2
##EOF
##fi

echo "storm.zookeeper.servers:" $1 >> "$CONFIG"
echo "nimbus.host:" $2 >> "$CONFIG"
#echo $3
exec "$3"
