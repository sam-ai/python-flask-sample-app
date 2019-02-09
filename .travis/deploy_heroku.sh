#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
#echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin 
#docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
echo "$HEROKU_API_KEY" | docker login -u _ --password-stdin registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
#docker push registry.heroku.com/$HEROKU_APP_NAME/web
