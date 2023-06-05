FROM kalilinux/kali-rolling

MAINTAINER Phocean <jc@phocean.net>

WORKDIR /root

RUN apt-get update && apt-get install -y \
  tmux zsh vim \
  medusa hydra smbclient \
  mtr-tiny tcptraceroute ike-scan arp-scan nmap unicornscan crackmapexec john \
  nikto wapiti python3-pip git sslsplit sslscan dsniff \
  patator crowbar hydra yersinia dnsenum bettercap \
  exploitdb python3-impacket impacket-scripts \
  dnsenum dirb responder \
  && pip3 install pyip pyopenssl==17.2.0 impacket \
  && git clone https://github.com/SPiderLabs/ikeforce.git \
  && git clone https://github.com/jtesta/ssh-mitm.git \
  && git clone https://github.com/danielmiessler/SecLists.git \
  && cd ssh-mitm && ./install.sh \
  && rm -rf /var/lib/apt/lists/*

ADD tmux.conf /root/.tmux.conf
ADD vimrc /root/.vimrc

CMD tmux
