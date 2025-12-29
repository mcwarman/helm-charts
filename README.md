> [!IMPORTANT]
> This project is archived and no longer maintained

# mcwarman Helm Charts

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT) [![Pipeline Status](https://github.com/mcwarman/helm-charts/workflows/Release%20Charts/badge.svg?branch=main)](https://github.com/mcwarman/helm-charts/actions) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/mcwarman)](https://artifacthub.io/packages/search?repo=mcwarman)

These charts are provided as-is with no warranties.

## Charts

The following charts are present in this repo:

- [Backstage](charts/backstage/)

## Usage

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
helm repo add mcwarman https://mcwarman.github.io/helm-charts/
helm repo update
```

You can then run `helm search repo mcwarman` to see the available charts and the latest version.

## License

[MIT License](./LICENSE).
