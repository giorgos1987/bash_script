#/bin/bash

#set a crontab with
## 0,7 * * * *  /home/../watchdog/check_personaltrainer.sh



url='http://specialtrainer.gr'

#response=$(curl --write-out %{http_code} --silent --output /dev/null servername)
status=$(curl  -Is --connect-timeout 5  --write-out %{http_code} --silent --output /dev/null $url)
#status=$(r=(IFS=' ';$(curl -Is --connect-timeout 5 "${url}" || echo 1 500));echo ${r[1]})
if [ $status -eq '500' ] #&& bounce # assuming the bounce script is called 'bounce'
then
/etc/init.d/mysql restart
 echo 'a restart made at ' .  $(date)  >> ./log.txt

#echo $status
fi

#echo $status
