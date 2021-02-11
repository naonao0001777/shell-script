# date
DATE=`date +%Y%m%d%H%M%S`
# list
ls > /c/temp/${DATE}.txt
# roop
while read a;do rm ./$a;done < /c/temp/${DATE}.txt
