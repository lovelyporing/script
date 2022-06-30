#!/bin/bash
aws kms get-key-policy --key-id <복사한 키 아이디> \
   --policy-name default | sed 's|\\\"|"|g' | sed -e 's|\\n|\n|g'