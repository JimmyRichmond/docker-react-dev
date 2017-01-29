#!/bin/bash
if [ ! -d /app/$APPNAME ]; then
  cd /app
  echo 'Creating React App...'
  create-react-app $APPNAME
fi

cd /app/$APPNAME
yarn
yarn run start
