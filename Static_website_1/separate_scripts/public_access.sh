#!/bin/bash

aws s3api put-bucket-policy \
--bucket macak-bucket \
--policy "{
  \"Version\": \"2012-10-17\",
  \"Statement\": [
      {
          \"Sid\": \"PublicReadGetObject\",
          \"Effect\": \"Allow\",
          \"Principal\": \"*\",
          \"Action\": \"s3:GetObject\",
          \"Resource\": \"arn:aws:s3:::macak-bucket/*\"
      }
  ]
}" \
--profile Playground
