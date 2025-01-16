#!/bin/bash

bucket_name="front04-bucket"
website_directory="aws_projects\Static_website_1"
region="us-west-2"
profile="Playground"

# Creating a new bucket
aws s3 mb --profile $profile --region $region "s3://$bucket_name"

# Uploading the website

aws s3 sync --profile $profile --region $region $website_directory "s3://$bucket_name"

