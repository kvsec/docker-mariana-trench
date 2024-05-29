The open source tool can be downloaded from [here](https://github.com/facebook/mariana-trench). 

Next place it in any folder and access it from docker container. Run it internally and analyze with sapp also internally from docker. Then run server from host system in the folder of the app.  

This is just a basic docker implementation of the tool. Previously had problems with building it on ARM, so the docker version appeared. 

**Important!** 
Clone mariana trench to a separate directory to run from docker container internally. 

## Build:
```bash
docker build -t mariana_trench .
```
## You can run it like that:
Basically giving 1 GB and up to 8 GB of memory for Java Virtual Machine (JVM), which is not max, but optimal for most projects. 
```bash
#!/bin/sh
docker run -e _JAVA_OPTIONS="-Xmx8g -Xms1g" -v /hostfolder:/dockerfolderinternal -it --rm mariana_trench
```
## Running the tool 
https://github.com/facebook/mariana-trench#running-mariana-trench
