FROM ubuntu:22.04

RUN apt-get -y upgrade && apt-get -y update
RUN apt-get -y install 
	git \
	python3 \
	python3-pip

# Install PyTorch
RUN pip3 install \
	torch \
	torchvision \
	torchaudio \
	tensorflow \
	tensorboardX

# Work Directory Config
WORKDIR /app/
ENV APP /app
