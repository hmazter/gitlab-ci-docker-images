#!/usr/bin/env bash

docker build -t hmazter/gitlab-ci-php:7.0 php7.0
docker push hmazter/gitlab-ci-php:7.0

docker build -t hmazter/gitlab-ci-python:3.5 python3.5
docker push hmazter/gitlab-ci-python:3.5
