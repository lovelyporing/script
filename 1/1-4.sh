#!/bin/bash
aws configure set default.region ap-northeast-2
aws codecommit get-folder --repository-name kr-cl-repo --folder-path src | jq '.files[0]' | jq '.relativePath'