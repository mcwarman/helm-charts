MAKEFLAGS+= --silent --always-make

docs:
	helm-docs --sort-values-order=file --template-files=./_helm-docs-templates.gotmpl --template-files=README.md.gotmpl
