#!/bin/bash
aws configure set default.region ap-northeast-1
aws codebuild list-projects | jq '.projects[0]' | grep jp-cl-build