# Backstage

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: main](https://img.shields.io/badge/AppVersion-main-informational?style=flat-square)

[Backstage](https://backstage.io/) is an open platform for building developer portals.

## Installing the Chart

Before you can install the chart you will need to add the `mcwarman` repo to [Helm](https://helm.sh/).

```shell
helm repo add mcwarman https://mcwarman.github.io/helm-charts/
```

After you've installed the repo you can install the chart.

```shell
helm upgrade --install --namespace default --values ./my-values.yaml my-release mcwarman/backstage
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami/ | postgresql | 11.0.4 |

## Configuration

The following table lists the configurable parameters of the _backstage_ chart and their default values.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nameOverride | string | `""` | Override the name of the chart. |
| fullnameOverride | string | `""` | Override the fullname of the chart. |
| frontend.image.repository | string | `"ghcr.io/mcwarman/backstage-sample-app/app"` | Frontend image repository. |
| frontend.image.tag | string | `""` |  |
| frontend.image.pullPolicy | string | `"IfNotPresent"` | Frontend image pull policy. |
| frontend.image.pullSecrets | list | `[]` | Frontend image pull secrets. |
| frontend.serviceAccount.create | bool | `true` | Frontend if `true`, create a new service account. |
| frontend.serviceAccount.annotations | object | `{}` | Frontend annotations to add to the service account |
| frontend.serviceAccount.name | string | `""` | Frontend service account to be used. If not set and serviceAccount.create is true, a name is generated using the full name template. |
| frontend.autoscaling.enabled | bool | `false` | Frontend if `true`, create a HPA for the deployment. |
| frontend.autoscaling.minReplicas | int | `1` | Frontend minimum number of pod replicas. |
| frontend.autoscaling.maxReplicas | int | `3` | Frontend maximum number of pod replicas. |
| frontend.autoscaling.targetCPUUtilizationPercentage | int | `60` | Frontend target CPU utilisation for the pod. |
| frontend.autoscaling.targetMemoryUtilizationPercentage | string | `nil` | Frontend target memory utilisation for the pod. |
| frontend.podDisruptionBudget.enabled | bool | `false` | Frontend if `true`, create a PDB for the deployment. |
| frontend.podDisruptionBudget.minAvailable | int | `nil` | Frontend set the PDB minimum available pods. |
| frontend.podDisruptionBudget.maxUnavailable | int | `nil` | Frontend set the PDB maximum unavailable pods. |
| frontend.podAnnotations | object | `{}` | Frontend annotations to add to the pod. |
| frontend.podLabels | object | `{}` | Frontend labels to add to the pod. |
| frontend.securityContext | object | `{}` | Frontend security context for the container. |
| frontend.podSecurityContext | object | `{}` | Frontend security context for the pod. |
| frontend.priorityClassName | string | `""` | Frontend priority class name to use. |
| frontend.livenessProbe | object | see values.yaml | The liveness probe. |
| frontend.readinessProbe | object | see values.yaml | Frontend the readiness probe. |
| frontend.service.type | string | `"ClusterIP"` | Frontend service type. |
| frontend.service.annotations | object | `{}` | Frontend annotations to add to the service. |
| frontend.service.port | int | `80` | Service port. |
| frontend.ingress.enabled | bool | `false` | Frontend if `true`, create an ingress object. |
| frontend.ingress.annotations | object | `{}` | Ingress annotations. |
| frontend.ingress.ingressClassName | string | `""` | Frontend ingress class to use. |
| frontend.ingress.hosts | list | `[]` | Frontend ingress hosts. |
| frontend.ingress.tls | list | `[]` | Frontend ingress TLS configuration |
| frontend.resources | object | `{}` | Frontend resource requests and limits for the clamav container. |
| frontend.replicaCount | int | `1` | Frontend number of replicas to create. |
| frontend.nodeSelector | object | `{}` | Frontend node labels for pod assignment. |
| frontend.tolerations | list | `[]` | Frontend tolerations for pod assignment. |
| frontend.affinity | object | `{}` | Frontend affinity for pod assignment. |
| backend.image.repository | string | `"ghcr.io/mcwarman/backstage-sample-app/backend"` | Backend image repository. |
| backend.image.tag | string | `""` |  |
| backend.image.pullPolicy | string | `"IfNotPresent"` | Backend image pull policy. |
| backend.image.pullSecrets | list | `[]` | Backend image pull secrets. |
| backend.serviceAccount.create | bool | `true` | Backend if `true`, create a new service account. |
| backend.serviceAccount.annotations | object | `{}` | Backend annotations to add to the service account |
| backend.serviceAccount.name | string | `""` | Backend service account to be used. If not set and serviceAccount.create is true, a name is generated using the full name template. |
| backend.autoscaling.enabled | bool | `false` | Backend if `true`, create a HPA for the deployment. |
| backend.autoscaling.minReplicas | int | `1` | Backend minimum number of pod replicas. |
| backend.autoscaling.maxReplicas | int | `3` | Backend maximum number of pod replicas. |
| backend.autoscaling.targetCPUUtilizationPercentage | int | `60` | Backend target CPU utilisation for the pod. |
| backend.autoscaling.targetMemoryUtilizationPercentage | string | `nil` | Backend target memory utilisation for the pod. |
| backend.podDisruptionBudget.enabled | bool | `false` | Backend if `true`, create a PDB for the deployment. |
| backend.podDisruptionBudget.minAvailable | int | `nil` | Backend set the PDB minimum available pods. |
| backend.podDisruptionBudget.maxUnavailable | int | `nil` | Backend set the PDB maximum unavailable pods. |
| backend.podAnnotations | object | `{}` | Backend annotations to add to the pod. |
| backend.podLabels | object | `{}` | Backend labels to add to the pod. |
| backend.securityContext | object | `{}` | Backend security context for the container. |
| backend.podSecurityContext | object | `{}` | Backend security context for the pod. |
| backend.priorityClassName | string | `""` | Backend priority class name to use. |
| backend.livenessProbe | object | see values.yaml | The liveness probe. |
| backend.readinessProbe | object | see values.yaml | Backend the readiness probe. |
| backend.service.type | string | `"ClusterIP"` | Backend service type. |
| backend.service.annotations | object | `{}` | Backend annotations to add to the service. |
| backend.service.port | int | `80` | Service port. |
| backend.ingress.enabled | bool | `false` | Backend if `true`, create an ingress object. |
| backend.ingress.annotations | object | `{}` | Ingress annotations. |
| backend.ingress.ingressClassName | string | `""` | Backend ingress class to use. |
| backend.ingress.hosts | list | `[]` | Backend ingress hosts. |
| backend.ingress.tls | list | `[]` | Backend ingress TLS configuration |
| backend.resources | object | `{}` | Backend resource requests and limits for the clamav container. |
| backend.replicaCount | int | `1` | Backend number of replicas to create. |
| backend.nodeSelector | object | `{}` | Backend node labels for pod assignment. |
| backend.tolerations | list | `[]` | Backend tolerations for pod assignment. |
| backend.affinity | object | `{}` | Backend affinity for pod assignment. |
| psql | string | `nil` | Settings are only required if you wish to use an existing postgresql instance |
| postgresql | object | `{"enabled":false}` | Configuration values for the postgresql dependency, [reference](https://artifacthub.io/packages/helm/bitnami/postgresql). |
| appConfig | object | see values.yaml | Backstage application config, [reference](https://backstage.io/docs/conf/writing). |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
