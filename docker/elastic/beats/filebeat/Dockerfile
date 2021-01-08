# ARGS
ARG ELASTIC_VERSION

# Retrieve base image
FROM docker.elastic.co/beats/filebeat:$ELASTIC_VERSION
 
# Root user
USER root

# Copy config
COPY --chown=0:0 /build/ /usr/share/filebeat/

# Set permissions
RUN chmod 0640 /usr/share/filebeat/filebeat.yml && \
    chmod -R 0640 /usr/share/filebeat/modules.d && \
    chmod 0770 /usr/share/filebeat/modules.d

# Return to standard user
USER filebeat