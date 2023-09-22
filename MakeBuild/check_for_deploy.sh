#!/bin/sh

#set in crontab: */5 * * * *   user    cd check_deploy_path && ./check_for_deploy.sh

if [ -e .deploy ]
then
#add any part of process name
pkill -f $(pwd).*any_part_of_process_name
tar xz -f linuxserver_latest.tar.gz
mv linuxserver_latest.tar.gz linuxserver_prev.tar.gz
chmod a+x LinuxServer/Server.sh
rm -f .deploy

##sudo reboot
#or
##LinuxServer/./Server.sh &

fi
