#!/bin/bash
aws configure set default.region ap-northeast-1
aws codepipeline get-pipeline --name jp-cl-pipe | jq  '.pipeline.stages[1].name'