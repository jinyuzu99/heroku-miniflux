#!/bin/sh

git clone https://github.com/miniflux/v2.git source
cd source
git checkout $(git describe --tags --abbrev=0)
git checkout -D main

heroku apps:create
heroku addons:create heroku-postgresql:hobby-dev
heroku config:set RUN_MIGRATIONS=1
heroku config:set CREATE_ADMIN=1
heroku config:set ADMIN_USERNAME=admin
heroku config:set ADMIN_PASSWORD=test123
git push heroku main
