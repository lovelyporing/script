#!/bin/bash
aws configure set default.region ap-northeast-1
aws kms list-aliases --query 'Aliases[?AliasName==`alias/kr-cl-kms`]' | jq '.[0]' | grep AliasName