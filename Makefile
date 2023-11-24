MAKEFLAGS+= --silent --always-make

BACKSTAGE_VERSION := $(shell yq '.version' charts/backstage/Chart.yaml)

docs:
	helm-docs --sort-values-order=file --template-files=./_helm-docs-templates.gotmpl --template-files=README.md.gotmpl

changelog-backstage:
	git-cliff --include-path "charts/backstage/**" --tag backstage-${BACKSTAGE_VERSION} --unreleased --prepend ./charts/backstage/CHANGELOG.md
