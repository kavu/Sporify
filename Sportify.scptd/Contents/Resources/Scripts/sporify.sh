#!/usr/bin/env bash

set -e
set -u
set -x

TOKEN="$1"
SONG="$2"

curl -d "token=$TOKEN&profile=%7B%22status_text%22%3A%22$SONG%22%2C%22status_emoji%22%3A%22%3Anotes%3A%22%7D" https://slack.com/api/users.profile.set
