FROM docker.elastic.co/kibana/kibana-oss:6.2.2
USER root
RUN yum install -y iproute net-tools
USER kibana
RUN kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-6.2.2/sentinl-v6.2.2.zip
