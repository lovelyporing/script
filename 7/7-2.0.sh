#!/bin/bash
aws cloudformation list-stacks --query 'StackSummaries[?StackName==`jp-cl-stack`]' | jq '.[0]' | grep StackId