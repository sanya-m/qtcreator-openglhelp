#!/bin/bash
INDEX=${1}
PREFIX=${2}
cat ${INDEX} | grep "href=\"gl" | while read line
do
    KEY=`echo $line | awk -F '>' '{print $4}' | awk -F '<' '{print $1}'`
    VAL=`echo $line | awk -F '"' '{print $4}'`
   
   echo "<section title=\"${KEY}\" ref=\"${PREFIX}/${VAL}\"/>" 
done
