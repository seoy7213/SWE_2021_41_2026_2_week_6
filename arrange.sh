#!/bin/bash

# files 디렉터리 안의 모든 파일을 첫 글자 폴더로 이동
for filepath in files/*; do
    [ -f "$filepath" ] || continue              

    filename=$(basename "$filepath")            
    first=${filename:0:1}                        # 첫 글자
    lower=$(echo "$first" | tr 'A-Z' 'a-z')      # 소문자로 변환

    if [ -d "$lower" ]; then                     # 해당 폴더가 있으면
        mv "$filepath" "$lower/"                 # 그 폴더로 이동
    fi
done
