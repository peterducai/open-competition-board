# building container 
FROM registry.fedoraproject.org/fedora
RUN dnf install nodejs npm -y && dnf clean all -y
WORKDIR /
COPY . /board
RUN cd /board && npm install



RUN  && npm run start:dev

# CMD ["/usr/local/bin/runner.sh"]
# ENTRYPOINT ["/usr/local/bin/runner.sh"]