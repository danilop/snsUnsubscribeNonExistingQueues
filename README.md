### SNS Unsubscribe Not Existing SQS queues

This is a sample script using the new [AWS CLI](http://aws.amazon.com/cli)
and [jq](http://stedolan.github.io/jq) to 
check for SNS subscription by SQS queues that are not existing anymore
and remove (unsubscribe) them.

**This is a personal project. No relation whatsoever exists between this project and my employer.**

### License

Copyright (c) 2013 Danilo Poccia, http://blog.danilopoccia.net

This code is licensed under the The MIT License (MIT). Please see the LICENSE file that accompanies this project for the terms of use.

### Requirements

To use this script you need:
* the new [AWS CLI](http://aws.amazon.com/cli)
* [jq](http://stedolan.github.io/jq)

### Usage

Just run the script:

    ./snsUnsubscribeNonExistingQueues.sh

