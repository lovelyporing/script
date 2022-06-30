#!/bin/bash
aws configure set default.region ap-northeast-1
aws codepipeline list-pipelines --query 'pipelines[?name==`jp-cl-pipe`]' | jq '.[0]' | grep name