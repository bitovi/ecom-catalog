#!/bin/bash

set -e


# PUBLISH_S3_BUCKET
S3_PATH_PREFIX="ecom-catalog/$GITHUB_SHA"
S3_FULL_PATH="$PUBLISH_S3_BUCKET/${S3_PATH_PREFIX}"

echo "push to s3:"
echo "PUBLISH_S3_BUCKET: $PUBLISH_S3_BUCKET"
echo "S3_PATH_PREFIX: $S3_PATH_PREFIX"
echo "S3_FULL_PATH: $S3_FULL_PATH"

aws s3 sync "./public" s3://$S3_FULL_PATH --delete