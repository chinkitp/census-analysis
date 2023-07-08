FROM ubuntu:23.10
RUN apt-get update && apt-get install ca-certificates curl libdigest-sha-perl unzip sudo -y 

COPY ./rill-census-analysis /rill-census-analysis/
COPY ./scripts/install.sh /install.sh

ENV TERM=xterm
ENV RILL_VERSION=0.28.0

RUN chmod +x /install.sh

RUN /install.sh

ENTRYPOINT ["rill"]
CMD ["start rill-census-analysis"]