FROM opensuse:42.3

RUN zypper -n ar http://download.opensuse.org/repositories/devel:/languages:/nodejs/openSUSE_Leap_42.3/ Devel:Languages:NodeJS
RUN zypper -n --gpg-auto-import-keys ref Devel:Languages:NodeJS

RUN zypper -n in git
RUN zypper -n in nodejs6
RUN zypper -n in npm
RUN npm install -g yarn
