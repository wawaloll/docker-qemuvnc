


# docker-qemuvnc

## Another day, another sh*tty project.

### ‼THIS PROJECT IS IN BETA, PLEASE REPORT ANY ISSUES THAT YOU WILL FIND‼
Welp. the title says it all - qemu with noVNC running in a docker container.


### Requirements:
1. A brain with atleast 1 IQ

2. Docker

## Installation: 
```bash
  git clone https://github.com/wawasoftworks/docker-qemuvnc.git
  docker build -t <any name>
  docker run -d -p 5900:5900 -p 6080:6080 <the name that u specified in the first cmd>
```
### (or you could use the buildandrun.bat file in the repo)


## Changing the virtual disk's size
**In *stsrv.sh*:**

![1141234123123](https://cdn.discordapp.com/attachments/1128662430248083459/1128662668853645424/7f69fa995e0a85a6.png)

## Replacing the iso 
**In *dockerfile***
![image](https://cdn.discordapp.com/attachments/1128662430248083459/1128663543928070224/a897631c5a92c47e.png)

## Changing the memory
**In *stsrv.sh*:**
![image2](https://cdn.discordapp.com/attachments/1128662430248083459/1128664557070602310/6fd75eb3d07f2c55.png)

## Editing the password (its broken rn 😭 💀)
**In *dockerfile*:**

![image3](https://cdn.discordapp.com/attachments/1128662430248083459/1128664852714487948/5291bae8a0f38151.png)

### Or... you can remove it.
**In *stsrv.sh*:**

![image4](https://cdn.discordapp.com/attachments/1128662430248083459/1128665204482388030/0f5db1b6bb1c020e.png)
