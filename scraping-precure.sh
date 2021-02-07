curl -Lso- goo.gl/AqZuEg | grep -oP '<td><a[^>]*?>\K[\p{Katakana}ー]{5,9}(?=<)' | nl
