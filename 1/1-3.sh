#!/bin/bash
aws configure set default.region ap-northeast-2
aws codecommit get-file --repository-name kr-cl-repo --file-path kr_buildspec.yml | jq '.filePath'
aws codecommit get-file --repository-name kr-cl-repo --file-path jp_buildspec.yml | jq '.filePath'