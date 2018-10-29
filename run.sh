#!/bin/bash
#!bin/bash
if [ ! -d "model" ]; then
  tar -xzvf sentient-v2.tar.gz
fi

cd model/servers
python3.6 run_keras_web_server.py & 2>&1 | tee output
python3.6 run_keras_model_server.py  2>&1 | tee output
