The open source tool can be downloaded from here [here](https://github.com/facebook/mariana-trench).

This is just a basic docker implementation of the tool. Previously had problems with building it on ARM, so the docker version appeared.

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
