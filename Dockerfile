FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
  python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb \
  libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig python3-dev \
  python3-venv make golang libjpeg-turbo8-dev gcc wget unzip git fceux virtualenv \
  tmux htop
COPY . /home/noreward-rl
WORKDIR /home/noreward-rl
RUN bash models/download_models.sh
RUN virtualenv curiosity && . ./curiosity/bin/activate \
  && pip install numpy \
  && pip install -r src/requirements.txt \
  && python curiosity/src/go-vncdriver/build.py
