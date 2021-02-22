#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

# Updates the quickstart with the CloudVision entrypoint
curl -sL https://cf-templates-cloudvision-ci.s3-eu-west-1.amazonaws.com/master/entry-point.yaml | \
  yq -y '. | .Metadata |= . + {"QuickStartDocumentation": {"EntrypointName": "Quickstart for Sysdig CloudVision stack"}}' \
  > "$SCRIPT_DIR/../templates/cloudvision.template.yaml"
