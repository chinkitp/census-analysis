FROM rilldata/rill-developer:92845d8

COPY ./app/ /app/

ENV PROJECT=rill-census-analysis
ENV PROJECT_BASE=/app

RUN /app/scripts/init-project.sh

ENTRYPOINT /app/scripts/entrypoint.sh