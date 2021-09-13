#!/bin/bash

MULTISITE_HOST="http://127.0.0.1/"

cd /var/www/wordpress

deploy() {
  local site="$1"
  local domain="$2"

  rm -rf /var/www/wordpress/static_exports/$site

  {
    wp wp2static generate --allow-root --url=http://127.0.0.1/$site --skip-themes
    ssh deploy "cd ~ && rm -rf $domain"
    scp -r /var/www/wordpress/static_exports/$site deploy:/home/deploy/$domain
  } &> /dev/null
  echo "$site successfully deployed"
}

for site in "$@"; do
  IFS=':' read -ra site_domain <<< "$site"
  echo "Starting deploy for $site_domain..."
  deploy "${site_domain[@]}"
done
