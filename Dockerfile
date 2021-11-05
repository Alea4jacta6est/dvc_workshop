FROM ubuntu:latest
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Update package manager (apt-get) 
# and install (with the yes flag `-y`)
# Python and Pip
RUN apt-get update && apt-get install -y \
    python3.9 \
    python3-pip
RUN apt-get install -y libxml2-dev  \
            libxmlsec1-dev

COPY . .
#WORKDIR dvc_workshop
RUN pip install --upgrade pip setuptools wheel
RUN pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-2.6.0-cp39-cp39-manylinux2010_x86_64.whl
RUN pip install -r requirements.txt

RUN python3 src/preprocess.py
