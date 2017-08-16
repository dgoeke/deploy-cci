FROM clojure:lein-2.7.1

# the basics
RUN apt-get update && apt-get install -y --no-install-recommends \
    python python-pip python-setuptools ca-certificates groff less curl tar bash git

# aws cli
RUN pip install awscli && \
    rm -rf /var/cache/apk/*

# docker client
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.05.0-ce.tgz && \
    tar --strip-components=1 -xvzf docker-17.05.0-ce.tgz -C /usr/local/bin && \
    rm -rf docker-17.05.0-ce.tgz

# helm
RUN curl -fsSLO https://storage.googleapis.com/kubernetes-helm/helm-v2.4.1-linux-amd64.tar.gz && \
    tar -xf helm-v2.4.1-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    rm -rf helm-v2.4.1-linux-amd64.tar.gz
