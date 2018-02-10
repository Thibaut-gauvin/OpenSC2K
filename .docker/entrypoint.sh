#!/bin/sh

set -e

/app/node_modules/.bin/electron-rebuild -f -w better-sqlite3

exec "$@"
