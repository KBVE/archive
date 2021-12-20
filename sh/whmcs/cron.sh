#CronJob - based off of https://docs.whmcs.com/Crons
#Example - */5 * * * * php -q /home/username/crons/cron.php
#wget -q "http://blah.meh.com/my/path" -O /dev/null
#wget -O http://www.kbve.com/whmcspath/crons/cron.php >/dev/null
wget -O http://www.kbve.com/whmcspath/crons/cron.php >/dev/null
#We can go ahead and add a nginx layer ontop to prevent access to the file from any IPs besides the one listed.
