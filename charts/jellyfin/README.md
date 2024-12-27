# jellyfin

![Version: 1.3.1](https://img.shields.io/badge/Version-1.3.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 10.10.3](https://img.shields.io/badge/AppVersion-10.10.3-informational?style=flat-square)

A Helm chart for Jellyfin, the Free Software Media System that puts you in control of managing and streaming your media.

**Homepage:** <https://jellyfin.org>

## Source Code

* <https://github.com/jellyfin/jellyfin>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"jellyfin/jellyfin"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"jellyfin.example.com"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| jellyfin.publishedServerUrl | string | `""` | See PublishedServerUrl at https://jellyfin.org/docs/general/administration/configuration#main-configuration-options |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.cache | object | `{"accessMode":"ReadWriteOnce","annotations":{},"enabled":false,"existingClaim":"","size":"10Gi","storageClass":""}` | Persistence config for the /cache volume |
| persistence.config | object | `{"accessMode":"ReadWriteOnce","annotations":{},"enabled":false,"existingClaim":"","size":"1Gi","storageClass":""}` | Persistence config for the /config volume |
| persistence.media | object | `{"accessMode":"ReadWriteOnce","annotations":{},"enabled":false,"existingClaim":"","size":"10Gi","storageClass":""}` | Persistence config for the /media volume |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsGroup | int | `1000` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| service.port | int | `8096` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

