FROM 1.19-0.14.8-fabric
ADD https://github.com/TISUnion/Carpet-TIS-Addition/releases/download/v1.38.0/carpet-tis-addition-mc1.19-v1.38.0.jar /usr/src/mods/fabric-carpet-tis.jar
ADD https://github.com/FabricMC/fabric/releases/download/0.57.0%2B1.19/fabric-api-0.57.0+1.19.jar /usr/src/mods/fabric-api.jar
ADD https://github.com/gnembon/fabric-carpet/releases/download/1.4.79/fabric-carpet-1.19-1.4.79+v220607.jar /usr/src/mods/fabric-carpet.jar
ADD https://github.com/OKTW-Network/FabricProxy/releases/download/v1.4.10/FabricProxy-1.4.10.jar /usr/src/mods/fabric-proxy.jar
ADD https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.19-0.8.1/lithium-fabric-mc1.19-0.8.1.jar /usr/src/mods/fabric-lithium.jar
ADD https://mediafiles.forgecdn.net/files/3835/973/starlight-1.1.1%2Bfabric.ae22326.jar /usr/src/mods/fabric-starlight.jar
ADD https://mediafiles.forgecdn.net/files/3879/542/spark-1.9.26-fabric.jar /usr/src/mods/fabric-spark.jar
ADD https://mediafiles.forgecdn.net/files/3836/903/worldedit-mod-7.2.11-beta-01.jar /usr/src/mods/fabric-world-edit.jar
CMD cp ../files/* ../server/ && cp ../mods/* ../server/mods/ && java -Xmx10G -jar ../jar/fabric-server-mc.1.19-loader.0.14.8-launcher.0.11.0.jar nogui