#!/usr/bin/env bash

set -eo pipefail

cd "$(dirname "$0")"

function die() {
    echo 1>&2 $*
    exit 1
}

if [ -z "$GEN_PATH" ]; then
    die "GEN_PATH must be set, e.g. /path/to/sajari/sdk-ruby"
fi

VERSION=4.0.0

docker-entrypoint.sh generate \
  -i /openapi.json  \
  -g ruby \
  -o $GEN_PATH \
  --artifact-version $VERSION \
  --http-user-agent "sajari-sdk-ruby-$VERSION" \
  --git-host "github.com/sajari" \
  --git-repo-id sdk-ruby \
  --additional-properties gemVersion=$VERSION \
  --additional-properties gemHomepage="https://github.com/sajari/sdk-ruby" \
  --additional-properties gemLicense="MIT" \
  --additional-properties gemName="sajari_client" \
  --additional-properties moduleName="SajariAPIClient"
