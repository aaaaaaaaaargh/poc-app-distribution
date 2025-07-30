#!/bin/bash

cd -P "$(dirname "$0")" || exit 1

cp "$(ls -d ../archive/* | tail -1)/wip.ipa" poc-app.ipa
git add -u
git commit -m "new version"
git push
