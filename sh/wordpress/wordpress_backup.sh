MYSQL_PASSWORD=""
DATE=$(date +'%d%b%Y')
BACKUP_LOCATION="/tmp/wp-backup-$DATE.tar"
DATABASE_BACKUP_LOCATION="/tmp/db-backup-$DATE.sql"

tar -cf $BACKUP_LOCATION /var/www/wordpress
mysqldump wordpress -u wordpress -p${MYSQL_PASSWORD} > $DATABASE_BACKUP_LOCATION
tar -uf $BACKUP_LOCATION $DATABASE_BACKUP_LOCATION
gzip $BACKUP_LOCATION

scp "$BACKUP_LOCATION.gz" backup:/home/wp-backup
#rm "$BACKUP_LOCATION.gz" $DATABASE_BACKUP_LOCATION
echo "Backup successful"
