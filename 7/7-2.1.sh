#!/bin/bash
aws cloudformation describe-stacks \
  --stack-name <출력된 선수의 ARN> | jq '.Stacks[0].Outputs'