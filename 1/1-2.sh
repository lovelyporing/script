#!/bin/bash
aws configure set default.region ap-northeast-2
aws codecommit list-repositories | jq '.repositories[0]' | jq '.repositoryName'