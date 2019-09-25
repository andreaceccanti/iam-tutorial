FROM centos:7

RUN yum -y install epel-release && \
      yum -y update && \
      yum -y install jq curl nc telnet httpie && \
      adduser test

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

USER test
WORKDIR /home/test
