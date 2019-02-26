#!/usr/bin/env bash

bash models/download_models.sh
virtualenv curiosity && . ./curiosity/bin/activate
pip install numpy
pip install -r src/requirements.txt
python curiosity/src/go-vncdriver/build.py
