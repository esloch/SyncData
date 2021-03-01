#!/usr/bin/env bash

#####/Storage/#####
# Relatorio
# Bucardo_data
# docker_dir
# infodengue_data
# infodengue_pg_data
# staging_data
# staging_pg_data
######################

# ==> HETZNER <== #
### GET FGV TO HETZNER
rsync -azPv -O --progress $SERVER_FGV /Storage/
### GET FIOCRUZ TO HETZNER
rsync -azPv -O --progress $SERVER_FIOCRUZ /Storage/

### FROM HETZNER TO FGV
rsync -azPv --progress /Storage/teste $SERVER_FGV
### FROM HETZNER TO FIOCRUZ
rsync -azPv --progress /Storage/teste $SERVER_FIOCRUZ

# ==> FGV <== #
### FROM FGV TO FIOCRUZ
rsync -azPv --progress /Storage/teste $SERVER_FIOCRUZ

# ==> FIOCRUZ <== #
### FROM FIOCRUZ TO FGV
rsync -azPv --progress /Storage/teste $SERVER_FGV
