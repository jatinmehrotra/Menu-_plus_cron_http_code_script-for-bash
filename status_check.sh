#!/bin/bash

while true; do 
	curl -w "@curl.txt" -s  -I opem-Appli-1LRQRAYU9H6FC-697553759.ap-northeast-1.elb.amazonaws.com|grep -E "(^HTTP|time)">> status.txt
	echo "" >> status.txt
	echo "----------------------------------------------" >>  status.txt
	echo "" >> status.txt

done

