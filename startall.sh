docker-compose --env-file ./traefik/.env  -f traefik/docker-compose.yml up -d
echo "started traefik"
docker-compose --env-file ./nginx/.env -f nginx/docker-compose.yml up -d
echo "started website"
docker-compose --env-file ./nextcloud/.env -f nextcloud/docker-compose.yml up -d
echo "started nextcloud"
docker-compose --env-file ./dozzle/.env  -f dozzle/docker-compose.yml up -d
echo "started dozzle"
