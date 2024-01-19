#!/usr/bin/env bash

set -euo pipefail

dir=$1
log_line=$2

git checkout main -- "${dir}/CHANGELOG.md"

chart_version=$(yq '.version' "${dir}/Chart.yaml")
date=$(date "+%Y-%m-%d")

log="\n## ${chart_version} - ${date}\n\n### Changed\n\n- ${log_line}"

sed -i -e '/### Removed -->/a'\\ -e "$log" "${dir}/CHANGELOG.md"
