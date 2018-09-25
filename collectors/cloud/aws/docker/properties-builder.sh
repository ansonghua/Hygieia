#!/bin/bash

# if [ "$SKIP_PROPERTIES_BUILDER" = true ]; then
#   echo "Skipping properties builder"
#   exit 0
# fi

# if we are linked, use that info
# if [ "$MONGO_STARTED" != "" ]; then
#   # links now use hostnames
#   # todo: retrieve linked information such as hostname and port exposition
#   export SPRING_DATA_MONGODB_HOST=mongodb
#   export SPRING_DATA_MONGODB_PORT=27017
# fi



cat > $PROP_FILE <<EOF
#Database Name - default is test
dbname=${SPRING_DATA_MONGODB_DATABASE:-dashboarddb}

#Database HostName - default is localhost
dbhost=${SPRING_DATA_MONGODB_HOST:-db}

#Database Port - default is 27017
dbport=${SPRING_DATA_MONGODB_PORT:-27017}

#Database Username - default is blank


dbusername=${SPRING_DATA_MONGODB_USERNAME:-dashboarduser}

#Database Password - default is blank
dbpassword=${SPRING_DATA_MONGODB_PASSWORD:-dbpassword}

aws.cron=${CLOUD_CRON:-0 */1 * * * *}

aws.validTagKey[0]=${TAG_KEY:-hygieia}

aws.proxyHost=
aws.proxyPort=
aws.nonProxy=

aws.profile=


EOF
