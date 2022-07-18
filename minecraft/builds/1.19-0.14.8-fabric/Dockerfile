FROM openjdk:17
WORKDIR /usr/src/server
RUN cd .. && mkdir jar && mkdir test && cd jar && curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.19/0.14.8/0.11.0/server/jar && cd /usr/src/server
CMD cp ../files/* ../server/ && java -Xmx10G -jar ../jar/fabric-server-mc.1.19-loader.0.14.8-launcher.0.11.0.jar nogui