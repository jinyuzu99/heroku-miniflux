#!/bin/sh

heroku apps:create
heroku addons:create heroku-postgresql:hobby-dev
heroku config:set RUN_MIGRATIONS=1
heroku config:set CREATE_ADMIN=1
heroku config:set ADMIN_USERNAME=admin
heroku config:set ADMIN_PASSWORD=test123
git push heroku main
