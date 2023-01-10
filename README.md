# Analysis of Census Data

## Build Status

[![Docker Image CI and Package](https://github.com/chinkitp/census-analysis/actions/workflows/docker-image.yml/badge.svg)](https://github.com/chinkitp/census-analysis/actions/workflows/docker-image.yml)

## Run the project

```bash
# login to github container registry
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# download the code
git clone git@github.com:chinkitp/census-analysis.git

# spin up the container
docker-compose up
```

## Sample Query

> Open the browser at ```http://localhost:9009/``` to open 

![Sample Rill Census Query](./docs/images/sample_query.png)


## Maintenance

```bash
# build new docker images
docker build . --tag ghcr.io/chinkitp/census-analysis:v0.0.x

# tag it with latest
docker tag ghcr.io/chinkitp/census-analysis:v0.0.x ghcr.io/chinkitp/census-analysis:latest

# push to github container registry
docker push ghcr.io/chinkitp/census-analysis:v0.0.x

# update the docker-compose file
# change this line image: ghcr.io/chinkitp/census-analysis:v0.0.x
```