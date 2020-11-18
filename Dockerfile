FROM jenkins/jnlp-agent-alpine
LABEL maintainer="ikambarov@yahoo.com"
COPY helm /usr/bin/
COPY kubectl /usr/bin/
COPY terraform /usr/bin/
RUN chmod +x /usr/bin/helm && chmod +x /usr/bin/kubectl && chmod +x /usr/bin/terraform
ENTRYPOINT ["sleep", "100000"]
