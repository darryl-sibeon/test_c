FROM registry.access.redhat.com/rhel7/rhel
RUN yum groupinstall "Development Tools"
RUN yum groupinstall "Development Libraries"
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN gcc -o myapp main.c
CMD ["./myapp"]
RUN cat /etc/redhat-release