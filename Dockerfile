FROM jenkins/jnlp-agent-alpine
LABEL maintainer="ikambarov@yahoo.com"
COPY helm /usr/bin/
COPY kubectl /usr/bin/
RUN chmod +x /usr/bin/helm && chmod +x /usr/bin/kubectl
ENTRYPOINT ["sleep", "100000"]
