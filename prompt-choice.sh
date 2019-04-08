#!/bin/bash

profiles=()
pathToAWSCreds="$HOME/.aws/credentials"

while read line; do
    if [[ $line == "["*"]" ]]; then
        profiles+=("${line:1:${#line}-2}")
    fi
done < $pathToAWSCreds

echo ""
echo "Choose your AWS profile by number: "
echo ""

select profile in "${profiles[@]}"
do
    [ -n "${REPLY}" ] && break
done

echo "You selected: ${profiles[$REPLY - 1]}"
