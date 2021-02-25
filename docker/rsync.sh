########################
## Syncronized Servers ##
########################
#!/usr/bin/env bash
. .env


#####/Storage/#####
#├── Relatorio
#├── bucardo_data
#├── docker_dir
#├── infodengue_data
#├── infodengue_pg_data
#├── staging_data
#├── staging_pg_data
####################


# Commands
rsync -azPv --progress /Storage/infodengue_data $SERVER_HETZNER_URL
# rsync -azPv --progress /Storage/infodengue_data $SERVER_FIOCRUZ_URL
# rsync -azPv --progress /Storage/teste SERVER_FIOCRUZ_URL
