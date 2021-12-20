#!/bin/sh
#INFO
#CronJob - based off of https://docs.whmcs.com/Crons
#Example - */5 * * * * php -q /home/username/crons/cron.php
#wget -q "http://blah.meh.com/my/path" -O /dev/null
#wget -O http://www.kbve.com/whmcspath/crons/cron.php >/dev/null

#SETUP
#*/5 * * * * /usr/bin/sh /home/git/cron.sh
#chmod +x /home/git/cron.sh

#SECURITY
#We can go ahead and add a nginx layer ontop to prevent access to the file from any IPs besides the one listed.


wget -O http://www.kbve.com/whmcspath/crons/cron.php >/dev/null
