#!/bin/bash

aws s3 website "s3://macak-bucket" \
--index-document index.html \
--error-document index.html \
--profile Playground