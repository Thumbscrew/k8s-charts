# cinny

![Version: 3.5.0](https://img.shields.io/badge/Version-3.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v4.5.1](https://img.shields.io/badge/AppVersion-v4.5.1-informational?style=flat-square)

A Helm chart for the Cinny Matrix Client

**Homepage:** <https://cinny.in/>

## Source Code

* <https://github.com/cinnyapp/cinny>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| customConfig.data.allowCustomHomeservers | bool | `true` | Allow the user to enter a homeserver not in the list |
| customConfig.data.defaultHomeserver | int | `3` | Index (starting with 0) in homeserverList of the server to display by default |
| customConfig.data.homeserverList | list | `["converser.eu","envs.net","matrix.org","mozilla.org"]` | List of Matrix homeservers to display |
| customConfig.enabled | bool | `false` | Enable the use of a custom config.json - see https://github.com/cinnyapp/cinny/blob/dev/config.json |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/cinnyapp/cinny"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"cinny.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

