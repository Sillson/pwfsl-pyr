FROM rocker/r-base:3.6.3

RUN apt-get update \
    && apt-get install -y curl \
    gnupg \
    apt-utils \
    libssl-dev \
    libudunits2-dev \
    libv8-dev \
    libjq-dev \
    libprotobuf-dev \
    protobuf-compiler \
    postgresql \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev

RUN apt-get install -y \
    python3.7 \
    python3-pip \
    g++ \
    gdal-bin \
    libgdal-dev

COPY requirements.txt /tmp/requirements.txt

RUN pip3 install --upgrade pip && \
    pip3 install -r /tmp/requirements.txt

# install R libs
COPY install_libs.R /tmp/install_libs.R
RUN chmod +x ./tmp/install_libs.R
RUN ./tmp/install_libs.R