#!/bin/bash

# Basic if statement
if [ -z ${HOST_UID} ]
  then
    useradd --shell=/bin/bash --home=/home/administrador --create-home administrador
  else
    groupadd --gid ${HOST_GID} administrador # we need the same GID as the host.
    useradd --shell=/bin/bash --home=/home/administrador/ --create-home administrador -u ${HOST_UID} -g ${HOST_GID}
fi;
