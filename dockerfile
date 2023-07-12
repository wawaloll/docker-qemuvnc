FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
    qemu \
    qemu-kvm \
    qemu-system \
    qemu-utils \
    libvirt-daemon \
    libvirt-daemon-system \
    bridge-utils \
    virt-manager \
    tightvncserver \
    x11vnc \
    xvfb \
    python3-pip \
    supervisor \
    git \
    nginx \
    curl \
    xserver-xorg-input-all \
    xterm \
    libgtk-3-0 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN python3 -m pip install --no-cache-dir websockify && git clone --depth 1 https://github.com/novnc/noVNC.git /opt/noVNC && git clone --depth 1 https://github.com/novnc/websockify.git /opt/noVNC/utils/websockify

RUN mkdir -p /root/.vnc && x11vnc -storepasswd 1337 /root/.vnc/passwd && chmod 600 /root/.vnc/passwd

COPY stsrv.sh /stsrv.sh

COPY novnc.conf /etc/nginx/conf.d/novnc.conf

RUN mkdir iso

RUN curl -L -o /iso/debian.iso https://cdimage.debian.org/mirror/cdimage/archive/5.0.9/amd64/iso-cd/debian-509-amd64-netinst.iso

RUN chmod +x stsrv.sh

EXPOSE 5900 6080

CMD ["/stsrv.sh"]