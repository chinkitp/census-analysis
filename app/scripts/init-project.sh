#!/usr/bin/env bash

echo "Initialising project at ${PROJECT_BASE}/${PROJECT}"
rill init --project ${PROJECT_BASE}/${PROJECT}

# rill import-table ${PROJECT_BASE}/${PROJECT}/data/2016/meta_cells.csv --project ${PROJECT_BASE}/${PROJECT}
for file in ${PROJECT_BASE}/data/2016/*.csv
do
    rill import-table "$file" --project ${PROJECT_BASE}/${PROJECT}
done

