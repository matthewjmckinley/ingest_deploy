#! /bin/env bash

set -o errexit
set -o errtrace

source beanstalk_functions.sh

if [ $# -ne 1 ]; then
    echo "$0 <env name>"
    exit 1
fi
env_name=$1

check_api_url ${env_name}