#!/bin/bash
aws configure set default.region ap-northeast-2
aws codecommit list-branches --repository-name kr-cl-repo | jq '.branches'
