#!/usr/bin/env bash

set -euo pipefail

dir=$1
message_format=$2
version=$3

git checkout main -- "${dir}/CHANGELOG.md"

chart_version=$(yq '.version' "${dir}/Chart.yaml")
date=$(date "+%Y-%m-%d")

# shellcheck disable=SC2059
log_line=$(printf "$message_format" "$version")

log="\n## ${chart_version} - ${date}\n\n### Changed\n\n- ${log_line}"

sed -i -e '/### Removed -->/a'\\ -e "$log" "${dir}/CHANGELOG.md"
