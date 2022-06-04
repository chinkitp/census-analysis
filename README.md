# Analysis of Census Data

## Build Status

[![Docker Image CI and Package](https://github.com/chinkitp/census-analysis/actions/workflows/docker-image.yml/badge.svg)](https://github.com/chinkitp/census-analysis/actions/workflows/docker-image.yml)


## Run the project

```bash
# login to github container registry
export CR_PAT=GITHUB_PATH
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# download the code
git clone git@github.com:chinkitp/census-analysis.git

# spin up the container
docker-compose up
```

## Sample Query

> Open the browser at ```http://localhost:8080/``` to open 

![Sample Rill Census Query](./docs/images/sample_query.png)