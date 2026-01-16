# tandoor-recipes

![Version: 3.0.1](https://img.shields.io/badge/Version-3.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.3.6](https://img.shields.io/badge/AppVersion-2.3.6-informational?style=flat-square)

A Helm chart for Tandoor Recipes, a digital recipe manager

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ^16.7.20 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| externalPostgresql.database | string | `"recipes"` |  |
| externalPostgresql.enabled | bool | `false` | Use an external PostgreSQL database |
| externalPostgresql.port | int | `5432` |  |
| externalPostgresql.username | string | `"recipes"` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/tandoorrecipes/recipes"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"recipes.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.media.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.media.annotations | object | `{}` |  |
| persistence.media.enabled | bool | `false` | Enable persistence for media files |
| persistence.media.existingClaim | string | `""` |  |
| persistence.media.size | string | `"1Gi"` |  |
| persistence.media.storageClass | string | `""` |  |
| persistence.static.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.static.annotations | object | `{}` |  |
| persistence.static.enabled | bool | `false` | Enable persistence for static files |
| persistence.static.existingClaim | string | `""` |  |
| persistence.static.size | string | `"1Gi"` |  |
| persistence.static.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.auth.database | string | `"recipes"` |  |
| postgresql.auth.password | string | `"recipes"` |  |
| postgresql.auth.username | string | `"recipes"` |  |
| postgresql.enabled | bool | `true` | Deploy Bitnami PostgreSQL sub-chart |
| postgresql.image.tag | string | `"latest"` |  |
| recipes.secretKey | string | `""` | Secret key used by Djano - see https://docs.tandoor.dev/system/configuration/#secret-key |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

