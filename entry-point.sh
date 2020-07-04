#!/bin/sh
: ${SLEEP_SECOND:=2}
wait_for() {
    echo Waiting for $1 to listen on $2...
    while ! nc -z $1 $2; do echo waiting...; sleep $SLEEP_SECOND; done
}

wait_for 10.127.2.4 27017

if test $1 = "true";then
    npm run install-server
fi
node server/app.js
