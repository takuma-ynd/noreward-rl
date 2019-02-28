FROM nvidia/cuda:9.0-base-ubuntu16.04
RUN apt-get update && apt-get install -y \
  python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb \
  libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig python3-dev \
  python3-venv make golang libjpeg-turbo8-dev gcc wget unzip git fceux virtualenv \
  tmux htop emacs
