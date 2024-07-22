Hi

This is a low level project that I writed With the help of chatgpt.

This project changes [Marzban Node](https://github.com/Gozargah/Marzban-node) xray core version.

**Warning** : If you connect your node to several panels, do not use it.

- **How to use ?**

**First of all, get backup form docker-compose.yml:**
```
cd /Marzban-node && cp docker-compose.yml docker-compose.yml.backup
```
-----------------------------------------------------

**For x86 Architecture**

This command changes Marzban Node Xray core to 1.8.20 :

```
wget https://github.com/ReinforsedX/Marzban-Node-Xray-core-version-changer/raw/main/x86/v1.8.21-x86 && bash v1.8.21-x86
```
-----------------------------------------------------
**For arm64 Architecture**

This command changes Marzban Node Xray core to 1.8.20

```
wget https://github.com/ReinforsedX/Marzban-Node-Xray-core-version-changer/raw/main/arm64/v1.8.21-arm64 && bash v1.8.21-arm64
```
----------------------------------------------------
**If you have a problem, restore the backup :**

Reastor Backup :
```
cd /Marzban-node && mv docker-compose.yml.backup docker-compose.yml && docker compose down && docker compose up -d
```

