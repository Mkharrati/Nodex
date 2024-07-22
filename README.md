Hi

This is a low level project that I writed With the help of chatgpt.

This project changes [Marzban Node](https://github.com/Gozargah/Marzban-node) xray core version.

**Warning** : If you connect your node to several panels, do not use this project.

- **How to use ?**

**First of all, get backup from docker-compose.yml:**
```
cd /Marzban-node && cp docker-compose.yml docker-compose.yml.backup
```
-----------------------------------------------------

**For x86 Architecture**

This command changes Marzban Node Xray core to 1.8.21 :

```
rm -r /var/lib/xray-core
clear && mkdir /var/lib/xray-core && cd /var/lib/xray-core
wget https://github.com/XTLS/Xray-core/releases/download/v1.8.21/Xray-linux-arm64-v8a.zip
unzip Xray-linux-arm64-v8a.zip && rm geosite.dat README.md LICENSE geoip.dat Xray-linux-arm64-v8a.zip && cd /Marzban-node && awk 'NR==12{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==13{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==14{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==15{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==16{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==17{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==18{$0="";}1' docker-compose.yml > temp && mv temp docker-compose.yml && sed -i '12c\      XRAY_EXECUTABLE_PATH: "/var/lib/xray-core/xray"' docker-compose.yml && sed -i '14c\    volumes:' docker-compose.yml && awk 'NR==14{print; print ""} NR!=14' docker-compose.yml > temp && mv temp docker-compose.yml && awk 'NR==14{print; print ""} NR!=14' docker-compose.yml > temp && mv temp docker-compose.yml && sed -i '15c\      - /var/lib/marzban-node:/var/lib/marzban-node' docker-compose.yml && sed -i '16c\      - /var/lib/xray-core:/var/lib/xray-core' docker-compose.yml && docker compose down && docker compose up -d && echo && echo xray core version chenged successfully && echo
```
-----------------------------------------------------
**For arm64 Architecture**

This command changes Marzban Node Xray core to 1.8.21

```
wget https://github.com/ReinforsedX/Marzban-Node-Xray-core-version-changer/raw/main/arm64/v1.8.21-arm64 && bash v1.8.21-arm64
```
----------------------------------------------------
**If you will have problem, restore the backup :**

Restore Backup :
```
cd /Marzban-node && mv docker-compose.yml.backup docker-compose.yml && docker compose down && docker compose up -d
```

