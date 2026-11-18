
docker-compose --env-file .env \
  -f certs/docker-compose.yml \
  -f shrine-hub/docker-compose.yml \
  -f docker-compose.yml \
  up --detach

sleep 300


docker-compose --env-file .env -f certs/docker-compose.yml  -f shrine-node1/docker-compose.yml -f docker-compose.yml up --detach

sleep 240

docker-compose --env-file .env -f certs/docker-compose.yml  -f shrine-node2/docker-compose.yml -f docker-compose.yml up --detach
