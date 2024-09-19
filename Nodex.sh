#!/bin/bash

# Determine the architecture
Determine_architecture() {
arch="Xray-linux-64.zip"
if [[ $HOSTTYPE == "aarch64" ]]; then
        arch="Xray-linux-arm64-v8a.zip"
fi
echo $arch
}

# Marzban-node directory
marzban_node_dir=$(find / -type d -name "Marzban-node" -exec test -f "{}/docker-compose.yml" \; -print -quit)

# creat core folder
creat_core_folder(){
mkdir /var/lib/marzban
rm -r /var/lib/marzban/xray-core
mkdir /var/lib/marzban/xray-core
}

# get xray core
get_xray_core() {
cd /var/lib/marzban/xray-core
wget https://github.com/XTLS/Xray-core/releases/download/v$1/$arch
if [ $? -eq 8 ]; then
    clear
    echo "Version is invalid"
    exit 1
fi
apt install zip
unzip $arch
rm geoip.dat geosite.dat LICENSE README.md
}

# Edite docker-compose.yml
update_marzban_node() {
    sed -i "/XRAY_EXECUTABLE_PATH/d" $marzban_node_dir/docker-compose.yml
    sed -i "/\/var\/lib\/marzban\/xray-core/d" $marzban_node_dir/docker-compose.yml
    sed -i "/XRAY_API_PORT/a\      XRAY_EXECUTABLE_PATH: /var/lib/marzban/xray-core/xray" $marzban_node_dir/docker-compose.yml
    sed -i "/volumes:/a\      - /var/lib/marzban/xray-core:/var/lib/marzban/xray-core" $marzban_node_dir/docker-compose.yml
}

#restart Marzban-node
restart(){
cd $marzban_node_dir
docker compose down
docker compose up -d   
}

Determine_architecture
creat_core_folder
get_xray_core $1
update_marzban_node $1
restart
