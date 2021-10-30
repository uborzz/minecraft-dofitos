FROM itzg/minecraft-server:java8

COPY server.properties /data/server.properties

ENV EULA=TRUE 
ENV VERSION=1.12.2
ENV TYPE=FORGE 
ENV ONLINE_MODE=FALSE
