# docker-traefik-nextcloud-nginx
docker compose files for traefik, nextcloud and nginx

#### Docker versions in test environment

- Docker version 20.10.6, build 370c289
- docker-compose version 1.25.5, build 8a1c60f6

### Getting started

**ENV**

Adjust the the .env files in nextcloud, traefik and  nginx

in line 26 in traefik/volume enter your auth string (replace USER:AUTH). You can generate the authentification string with this commands:
```
apt-get install apache2-utils
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
change the emailadress in traefik/volume/traefik.yaml file (line 20)

**Next Steps**
1. ```docker network create proxy```
2. ```bash startall.sh``` 

### Nextcloud
After the nextcloud url has been called, nextcloud must be configured like this
<p align="center">
    <img src="/nextcloud.png" width="50%">
    <br/><br/>
</p>
