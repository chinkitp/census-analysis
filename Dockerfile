FROM ubuntu:23.10
RUN apt-get update && apt-get install ca-certificates curl libdigest-sha-perl unzip sudo -y 

VOLUME /app
COPY ./scripts/ /scripts/
ENV TERM=xterm

RUN chmod +x /scripts/*.sh

RUN /scripts/install-rill.sh

ENTRYPOINT /scripts/entrypoint.sh