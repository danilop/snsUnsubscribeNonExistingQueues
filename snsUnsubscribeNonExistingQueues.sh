#!/bin/bash
aws sns list-subscriptions | jq -c '.Subscriptions[] | select(.Protocol == "sqs")' | while read s ; do if [ "$(aws sqs get-queue-url --queue-name  $(echo $s | jq -r .Endpoint| sed 's/^arn:aws:sqs:[^:]*:[^:]*://') 2>&1 >/dev/null ; echo $?)" != "0" ] ; then echo "Unsubscribing $s ..."; aws sns unsubscribe --subscription-arn $(echo $s | jq -r .SubscriptionArn); echo "Done."; fi ; done
