#!/bin/bash
aws configure set default.region ap-northeast-2
aws codebuild list-projects | jq '.projects[0]' | grep kr-cl-build