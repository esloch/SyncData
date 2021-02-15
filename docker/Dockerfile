FROM mdillon/postgis:9.6

RUN apt-get -qq update --yes \
    && apt-get -qq install --yes --no-install-recommends \
    build-essential debconf git make wget\
    ca-certificates locales gnupg2 sudo vim \
    && rm -rf /var/lib/apt/lists/*


ADD docker/postgres_setup/* /docker-entrypoint-initdb.d/
ADD docker/dev_dumps /dumps
