FROM centos
ADD consul /usr/local/bin/consul
ADD ui /usr/local/consul-ui
EXPOSE 8500
CMD consul agent -bootstrap -data-dir /tmp -server -ui-dir /usr/local/consul-ui/ -client=0.0.0.0
