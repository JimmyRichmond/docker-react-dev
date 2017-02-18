#!/bin/bash
if [ ! -d /app/$APPNAME ]; then
  cd /app
  echo 'Creating React App...'
  create-react-app $APPNAME
fi


cd /app/$APPNAME
yarn

if [ "$REDUX" = true ]; then
	echo 'Installing Redux...'
	yarn add redux react-redux
	yarn add redux-devtools --save-dev
fi

yarn run start
