# unifi-controller

![Version: 3.0.1](https://img.shields.io/badge/Version-3.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 8.1.127](https://img.shields.io/badge/AppVersion-8.1.127-informational?style=flat-square)

A Helm chart for the Unifi Controller

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mongodb | ^15.3.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.jvmMemory.limit | string | `"default"` | Integer value in MB or `default` for memory limit for JVM |
| config.jvmMemory.startup | string | `"default"` | Integer value in MB or `default` for startup memory for JVM |
| config.timezone | string | `"Etc/UTC"` | Timezone - see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List |
| externalMongodb.database | string | `"unifi"` |  |
| externalMongodb.enabled | bool | `false` | Use an external MongoDB database |
| externalMongodb.port | int | `27017` |  |
| externalMongodb.username | string | `"unifi"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"lscr.io/linuxserver/unifi-network-application"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"unifi-controller.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| mongodb.auth.databases[0] | string | `"unifi"` |  |
| mongodb.auth.passwords[0] | string | `"unifi"` |  |
| mongodb.auth.rootPassword | string | `"unifi"` |  |
| mongodb.auth.rootUser | string | `"root"` |  |
| mongodb.auth.usernames[0] | string | `"unifi"` |  |
| mongodb.enabled | bool | `true` | Deploy Bitnami MongoDB sub-chart |
| mongodb.initdbScriptsConfigMap | string | `"initdb-scripts"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `false` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.size | string | `"1Gi"` |  |
| persistence.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.combinedProtocols | bool | `true` | Use the same service for TCP and UDP ports - set to disabled if using a LoadBalancer with MetalLB |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

