#! usr/bin/bash

cat test.txt | while read line ;do grep -r $line /c/source/*;done