#!/bin/bash

FILE_OUTPUT=${1}
FILE_BASE_CONFIG=${2}
FILE_CA_CRT=${3}
FILE_CLIENT_CRT=${4}
FILE_CLIENT_KEY=${5}
FILE_TLS_KEY=${6}


cat ${FILE_BASE_CONFIG} \
    <(echo -e '<ca>') \
    ${FILE_CA_CRT} \
    <(echo -e '</ca>\n<cert>') \
    ${FILE_CLIENT_CRT} \
    <(echo -e '</cert>\n<key>') \
    ${FILE_CLIENT_KEY} \
    <(echo -e '</key>\n<tls-auth>') \
    ${FILE_TLS_KEY} \
    <(echo -e '</tls-auth>') \
    > ${FILE_OUTPUT}
