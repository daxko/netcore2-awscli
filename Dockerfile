FROM microsoft/dotnet:2.1-runtime

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    build-essential g++ python2.7 python2.7-dev unzip curl \
    python-pip python-setuptools gnupg2 groff zip \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /tmp \
    && cd /tmp \
    && pip install awscli \
    && rm -f /tmp/get-pip.py