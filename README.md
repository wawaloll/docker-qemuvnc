


# docker-qemuvnc

## Another day, another sh*tty project.

### ‼THIS PROJECT IS IN BETA, PLEASE REPORT ANY ISSUES THAT YOU WILL FIND‼
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
### (or you could use the buildandrun.bat file in the repo)
    
## Replacing the iso and changing the RAM:
**In *dockerfile*:**
![image](https://github.com/wawaloll/docker-qemuvnc/assets/126290309/fe40e74d-29d8-471c-8801-253de9ffc084)
**In *stsrv.sh*:**
![image2](https://github.com/wawaloll/docker-qemuvnc/assets/126290309/0f0c9ea7-2995-4385-b438-faf8022d3784)

## Editing the password
**In *dockerfile*:**

![image3](https://github.com/wawaloll/docker-qemuvnc/assets/126290309/85334bae-62f0-485a-bcd4-e357542352f8)

### Or... you can remove it.
**In *stsrv.sh*:**
![image4](https://github.com/wawaloll/docker-qemuvnc/assets/126290309/8cad931d-dc36-4c79-8e01-7f32c66ab85e)
