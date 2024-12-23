FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade && apt-get install iputils-ping hydra-gtk -y && \
					    apt install openssh-server nmap ftp curl zsh git -y && \
					    apt install openvpn easy-rsa -y
RUN mkdir -p /root/CTF

WORKDIR /root/CTF

COPY ./config.ovpn .

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

CMD ["zsh", "-c", "echo '\n\n### Welcome to the CTF environment ###' && exec zsh"]

