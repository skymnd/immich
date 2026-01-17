#!/bin/bash
source .env

cd /mnt/library
timeout 3600 aws s3 sync . $S3_BUCKET/library --storage-class DEEP_ARCHIVE --sse --endpoint-url https://s3.eu-west-2.amazonaws.com --only-show-errors &> /home/md/sync-log.txt
date >> /home/md/sync-log.txt
