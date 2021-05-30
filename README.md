# docker-traefik-nextcloud-nginx
docker compose file for traefik, nextcloud and nginx

#### Docker versions in test environment

- Docker version 20.10.6, build 370c289
- docker-compose version 1.25.5, build 8a1c60f6

### Getting started

**ENV**
Adjust the the .env files in nextcloud, traefik and  nginx
For TRAEFIK_DASHBOARD_AUTH you can generate the authentification with the following commands: 
```
apt-get install apache2-utils`
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
**Next Steps**
1. ```docker network create proxy```
2. ```bash startAll.sh``` 

### Nextcloud
After the nextcloud url has been called, nextcloud must be configured like this
<p align="center">
    <img src="/nextcloud.png" width="100%">
    <br/><br/>
</p>
