#!/bin/bash
aws configure set default.region ap-northeast-2
aws codepipeline list-pipeline-executions --pipeline-name kr-cl-pipe | jq '.pipelineExecutionSummaries[0]' | grep status
aws configure set default.region ap-northeast-1
aws codepipeline list-pipeline-executions --pipeline-name jp-cl-pipe | jq '.pipelineExecutionSummaries[0]' | grep status