#!/bin/bash
aws configure set default.region ap-northeast-2
aws codepipeline list-pipelines --query 'pipelines[?name==`kr-cl-pipe`]' | jq '.[0]' | grep name