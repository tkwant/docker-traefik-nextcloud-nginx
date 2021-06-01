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

**Next Steps**
1. change the emailadress in traefik/volume/traefik.yaml file (line 20)
2. ```docker network create proxy```
3. ```bash startall.sh``` 

**Nextcloud**
After the nextcloud url has been called, nextcloud must be configured like this
<p align="center">
    <img src="/nextcloud.png" width="50%">
    <br/><br/>
</p>

if you get permission denied error after clicking "finish installation" you have to delete the volumes and restart the containers. 

### Adding containers
You can use the nginx docker-compose.yaml file as a template. 
You have to adjust the labels for the new container in the docker-compose.yml file. (see example in dozzle/docker-compose.yml)
For demonstration purpose I added dozzle. With dozzle you can view your container logs on a webpage.
I edited the following labels
<p align="center">
    <img src="/add_containers.png" width="50%">
    <br/><br/>
</p>
I also added username and password authentifcation to the labels with the following two lines (the same as the traefik container)
```
- "traefik.http.middlewares.dozzle-auth.basicauth.users=user:pass"
- "traefik.http.routers.dozzle-secure.middlewares=secHeaders@file,dozzle-auth"
```

In the .env file I changed the url. 

### Contribution
All contributions are welcome.
