FROM fedora:latest
ENV START_FILE="install.sh"
WORKDIR /usr/src/myapp
COPY . /usr/src/myapp
COPY $START_FILE $WORKDIR

RUN chmod ug+x /usr/src/myapp/install.sh && \
    sync
RUN /usr/src/myapp/install.sh
RUN cat /etc/issue