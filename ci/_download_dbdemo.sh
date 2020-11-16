########################
## Download Dataverse ##
########################
#!/bin/bash


# Download data files for Dataverse
wget https://dataverse.harvard.edu/api/access/datafile/4154518 -O docker/dev_dumps/latest_dengue.sql.gz
wget https://dataverse.harvard.edu/api/access/datafile/4154429 -O docker/dev_dumps/latest_infodengue.sql.gz
