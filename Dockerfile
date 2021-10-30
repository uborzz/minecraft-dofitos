FROM itzg/minecraft-server:java8
# The MAINTAINER instruction allows you to set the Author field of the
# generated images.
#

# Add the PostgreSQL PGP key to verify their Debian packages.
# It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc

RUN wget https://mod-buildcraft.com/releases/BuildCraft/7.99.24.8/buildcraft-all-7.99.24.8.jar
COPY server.properties /data/server.properties

ENV EULA=TRUE 
ENV VERSION=1.12.2
ENV TYPE=FORGE 
ENV ONLINE_MODE=FALSE
