# MariaDB deployment using docker

## Stacks

- MariaDB 10.x
- Docker
- PMA
- Backup by cron

## Steps

- create dir

```shell
mkdir -p /var/lib/mysql
```

- goto dir and clone

```shell
cd /var/lib/mysql
git clone https://github.com/rendyproklamanta/docker-mariadb.git .
```

- Edit environment in .env

```shell
nano /var/lib/mysql/env.sh
```

- Adding port to firewall

```shell
ufw allow 3306
```

- Start script

```shell
chmod +x start.sh
```

- Run script

```shell
On Linux
./start.sh

On Windows OR non docker-swarm
./start.non-swarm.sh
```

- Enable auto start on reboot and re-sync mariadb :

```shell
> Enable startup service :
cp mariadb-stack.service /etc/systemd/system/mariadb-stack.service
sudo systemctl enable mariadb-stack.service

> Reboot and check status  :
sudo journalctl -u mariadb-stack.service
```

## Access

- Access database using PMA

```shell
Link : http://localhost:8000 or http://[YOUR_IP_ADDRESS]:8000
user : root
pass : MY_PASSWORD
```
