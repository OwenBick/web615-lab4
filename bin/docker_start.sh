#!/bin/bash

set +e

echo "=~=~=~=~=~ Attempting to Migrate the DB =~=~=~=~=~"
bin/rails db:migrate 2>/dev/null
RET=$?
set -e
if [ $RET -gt 0 ]; then
  echo "=~=~=~=~=~ MIGRATIOON FAILED; CREATING THE DATABASE =~=~=~=~=~"
  bin/rails db:create
  echo "=~=~=~=~=~ Migrating the database =~=~=~=~=~"
  bin/rails db:migrate
  bin/rails db:test:prepare
  echo "=~=~=~=~=~ Seeding the database =~=~=~=~=~"
  bin/rails db:seed
fi
echo "=~=~=~=~=~ REMOVING THE OLD SERVER PID =~=~=~=~"
rm -f tmp/pids/server.pids
echo "=~=~=~=~=~ Starting the webserver =~=~=~=~"
bin/rails server -p 3000 -b '0.0.0.0'