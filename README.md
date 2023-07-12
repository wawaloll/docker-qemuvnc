
# docker-qemuvnc

## Another day, another sh*tty project.

Welp. the title says it all - qemu with noVNC running in a docker container.


### Requirements:
1. A brain with atleast 1 IQ

2. Docker

## Installation: 
```bash
  git clone https://github.com/wawaloll/docker-qemuvnc.git
  docker build -t <any name>
  docker run -d -p 5900:5900 -p 6080:6080 <the name that u specified in the first cmd>
```
    
