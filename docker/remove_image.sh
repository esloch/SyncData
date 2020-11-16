######################
## Destroy database ##
######################
#!/usr/bin/env bash


docker rm $(docker ps -a -q  --filter ancestor='docker_dengue_db') -f
docker rmi --force $(docker images -q 'docker_dengue_db' | uniq)