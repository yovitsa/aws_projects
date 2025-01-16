#!/bin/bash

aws s3 sync aws_projects/dist "s3://macak-bucket/" \
--profile Playground