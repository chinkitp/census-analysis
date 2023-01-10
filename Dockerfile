FROM ubuntu:focal-20221130
RUN apt-get update && apt-get install ca-certificates curl libdigest-sha-perl unzip -y 

COPY ./app/ /app/

ENV PROJECT=rill-census-analysis
ENV PROJECT_BASE=/app

RUN curl -s https://cdn.rilldata.com/install.sh | bash
RUN /app/scripts/init-project.sh
RUN chmod +x /app/scripts/entrypoint.sh

COPY ./models/ /app/rill-census-analysis/models/

ENTRYPOINT /app/scripts/entrypoint.sh