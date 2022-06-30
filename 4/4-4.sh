#!/bin/bash
aws configure set default.region ap-northeast-2
aws codepipeline get-pipeline --name kr-cl-pipe | jq  '.pipeline.stages[1].name'