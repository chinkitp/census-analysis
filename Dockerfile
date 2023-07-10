FROM ubuntu:23.10
RUN apt-get update && apt-get install ca-certificates curl libdigest-sha-perl unzip sudo -y 

COPY ./rill-census-analysis /apps/rill-census-analysis
COPY ./scripts/ /scripts/
ENV TERM=xterm

RUN chmod +x /scripts/*.sh

RUN /scripts/install-rill.sh

ENTRYPOINT /scripts/entrypoint.sh