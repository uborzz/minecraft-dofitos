FROM itzg/minecraft-server:java8

RUN wget https://mod-buildcraft.com/releases/BuildCraft/7.99.24.8/buildcraft-all-7.99.24.8.jar
COPY server.properties /data/server.properties

ENV EULA=TRUE 
ENV VERSION=1.12.2
ENV TYPE=FORGE 
ENV ONLINE_MODE=FALSE
