FROM openjdk:17
WORKDIR /usr/src/server
RUN cd .. && mkdir jar && cd jar && curl -OJ https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar && cd /usr/src/server
CMD java -Xmx10G -jar ../jar/BungeeCord.jar