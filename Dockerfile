FROM archlinux
ARG TAGS
WORKDIR /usr/local/bin 
RUN pacman -Syu --noconfirm && pacman -S ansible git --noconfirm 
COPY . .
CMD ["sh","-c","ansible-playbook $TAGS base.yml"]
