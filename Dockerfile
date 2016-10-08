FROM pritunl/archlinux
CMD ["node-red", "-u", "/var/lib/nodered"]
VOLUME /var/lib/nodered
RUN useradd -r nodered -d /var/lib/nodered
RUN pacman  -S --noconfirm npm 
RUN npm install -g node-red
USER nodered
WORKDIR /var/lib/nodered
