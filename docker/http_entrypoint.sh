#!/bin/sh
bert-serving-start -model_dir /model -http_port $1
