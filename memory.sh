#!/bin/bash


to=pavankonangi9@gmail.com
thr=400
mymem=$(free -mt | grep "Total" |awk '{print $3}')
if [ $mymem > $thr ]
then
   echo  "the used memory is $mymem \n please check on it"| mailx -s "WARNING" $to
fi
