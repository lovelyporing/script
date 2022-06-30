#!/bin/bash
aws configure set default.region ap-northeast-1
aws cloudformation list-stacks --query 'StackSummaries[?StackName==`jp-cl-stack`]' | jq '.[0]' | grep StackId
