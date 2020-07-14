#!/usr/bin/env bash

GITHUB_PR_ID=$1
DO_NOT_COMMENT_ON_PR=$2
SELFSIGNED_SSL_CERT=$3


if [ "$SELFSIGNED_SSL_CERT" = "true" ]; then
  DEPLOY_FLAGS="--github-pr-id $GITHUB_PR_ID --do-not-comment-on-pr $DO_NOT_COMMENT_ON_PR --selfsigned-ssl-cert"
else
  DEPLOY_FLAGS="--github-pr-id $GITHUB_PR_ID --do-not-comment-on-pr $DO_NOT_COMMENT_ON_PR"
fi

echo $DEPLOY_FLAGS
