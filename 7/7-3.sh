#!/bin/bash
aws configure set default.region ap-northeast-2
aws cloudformation list-stacks --query 'StackSummaries[?StackName==`jp-cl-stack`]' | jq '.[0]'
aws configure set default.region ap-northeast-1
aws cloudformation list-stacks --query 'StackSummaries[?StackName==`jp-cl-stack`]' | jq '.[0]'
