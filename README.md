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

```sql
SELECT Median_rent_weekly,
       Median_tot_hhd_inc_weekly,
       Average_household_size,
       Median_mortgage_repay_monthly
FROM G02
WHERE SSC_CODE_2016 =
        (SELECT Census_Code_2016
         FROM structures
         WHERE Census_Name_2016 = 'Mawson Lakes');
```