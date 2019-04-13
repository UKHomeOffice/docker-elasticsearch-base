
FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.0@sha256:58ae94b778f880cf90433404a3524324feeafedebf5c85f6639a9c0f2f2b070b

USER 1000
ENV PATH /usr/share/elasticsearch/bin:$PATH
ENV JAVA_HOME /opt/jdk-12
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Dummy overridable parameter parsed by entrypoint
CMD ["eswrapper"]