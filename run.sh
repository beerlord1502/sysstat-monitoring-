#!/bin/bash

#  SPDX-FileCopyrightText: 2024 Maxim Puhov <maximuspuhov@gmail.com>
#  SPDX-License-Identifier: MIT

# use "chmod +x run.sh" for run application


DATE_FORMAT="%Y-%m-%d"
CURRENT_DATE=$(date +"$DATE_FORMAT")
BASE_NAME="log_${CURRENT_DATE}"
DIR_PATH="logs"


mkdir -p "$DIR_PATH"


counter=1
while [[ -f "${DIR_PATH}/${BASE_NAME}_${counter}.txt" ]]; do
    ((counter++))
done

FILENAME="${DIR_PATH}/${BASE_NAME}_${counter}.txt"

chmod +x main.bash
./main.bash | tee "$FILENAME"
