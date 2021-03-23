#!/usr/bin/bash
set -Ceuo pipefail

function rename_file () {
# ファイル名を変更
local from_file to_file
from_file=$1
to_file=$2

mv ./$from_file ./$to_file
}

# カレントディレクトリを確保
folderlist=$(ls)

for folder in ${folderlist[@]};do
    cd $folder
    
# カレントファイルを確保
    filelist=$(ls)
    for file in ${filelist[@]}; do
        echo ${file}
        file2=`echo ${file} | sed -e "s/001_#1_/003_#/g"`
        echo ${file2}
        rename_file ${file} ${file2}
    done
    cd ..
done
read -p "Hit Enter"
