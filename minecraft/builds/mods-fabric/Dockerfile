FROM 1.19.2-0.14.10-fabric
RUN mkdir -p /usr/src/mods/ && mkdir -p /usr/src/server/mods/
ADD "https://github.com/TISUnion/Carpet-TIS-Addition/releases/download/v1.41.1/carpet-tis-addition-mc1.19.2-v1.41.1.jar" /usr/src/mods/fabric-carpet-tis.jar
ADD "https://github.com/FabricMC/fabric/releases/download/0.66.0%2B1.19.2/fabric-api-0.66.0+1.19.2.jar" /usr/src/mods/fabric-api.jar
ADD "https://github.com/gnembon/fabric-carpet/releases/download/1.4.84/fabric-carpet-1.19.2-1.4.84+v221018.jar" /usr/src/mods/fabric-carpet.jar
ADD "https://github.com/OKTW-Network/FabricProxy/releases/download/v1.4.10/FabricProxy-1.4.10.jar" /usr/src/mods/fabric-proxy.jar
ADD "https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.19.2-0.10.2/lithium-fabric-mc1.19.2-0.10.2.jar" /usr/src/mods/fabric-lithium.jar
ADD "https://mediafilez.forgecdn.net/files/3835/973/starlight-1.1.1%2Bfabric.ae22326.jar" /usr/src/mods/fabric-starlight.jar
ADD "https://mediafilez.forgecdn.net/files/4029/758/spark-1.9.42-fabric.jar" /usr/src/mods/fabric-spark.jar
ADD "https://mediafilez.forgecdn.net/files/3922/622/worldedit-mod-7.2.12.jar" /usr/src/mods/fabric-world-edit.jar
CMD cp ../files/* . && rm -rf mods/ && rm -rf config/ && mkdir -p mods/ && mkdir -p config/ && cp ../mods/* mods/ && cp ../config/* config/ && java -Xmx10G -jar ../jar/fabric.jar nogui