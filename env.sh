#!/bin /sh

mkdir -p /etc/wal-e.d/env/

echo $AWS_ACCESS_KEY_ID > /etc/wal-e.d/env/AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY > /etc/wal-e.d/env/AWS_SECRET_ACCESS_KEY
echo $WALE_S3_ENDPOINT > /etc/wal-e.d/env/WALE_S3_ENDPOINT
echo $WALE_S3_PREFIX > /etc/wal-e.d/env/WALE_S3_PREFIX
