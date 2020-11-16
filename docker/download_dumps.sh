########################
## Download dev_dumps ##
########################
#!/usr/bin/env bash


set -a

wget --user ${DB_USER} --password ${DB_PASSWORD} -c https://info.dengue.mat.br/dev_dumps/dengue.sql.gz -O docker/dev_dumps/latest_dengue.sql.gz

wget --user ${DB_USER} --password  ${DB_PASSWORD} -c https://info.dengue.mat.br/dev_dumps/infodengue.sql.gz -O docker/dev_dumps/latest_infodengue.sql.gz
