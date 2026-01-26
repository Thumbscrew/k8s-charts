# focalboard

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 7.10.0](https://img.shields.io/badge/AppVersion-7.10.0-informational?style=flat-square)

A Helm chart for Mattermost Focalboard

**Homepage:** <https://www.focalboard.com/download/personal-edition/>

## Source Code

* <https://github.com/mattermost/focalboard>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| config.audit_cfg_file | string | `""` |  |
| config.authMode | string | `"native"` |  |
| config.dbconfig | string | `"./focalboard.db?_busy_timeout=5000"` | Default SQLite config. See https://github.com/mattermost/focalboard/blob/main/docker/config.json for PostgreSQL config example |
| config.dbtableprefix | string | `""` |  |
| config.dbtype | string | `"sqlite3"` | Possible values 'sqlite' and 'postgres' |
| config.enableLocalMode | bool | `false` |  |
| config.enablePublicSharedBoards | bool | `false` |  |
| config.filesdriver | string | `"local"` |  |
| config.filespath | string | `"./data/files"` |  |
| config.localModeSocketLocation | string | `"/var/tmp/focalboard_local.socket"` |  |
| config.localOnly | bool | `false` |  |
| config.logging_cfg_file | string | `""` |  |
| config.port | int | `8000` |  |
| config.postgres_dbconfig | string | `"dbname=focalboard sslmode=disable"` |  |
| config.prometheusaddress | string | `":9092"` |  |
| config.serverRoot | string | `"http://localhost:8000"` |  |
| config.session_expire_time | int | `2592000` |  |
| config.session_refresh_time | int | `18000` |  |
| config.telemetry | bool | `false` |  |
| config.useSSL | bool | `false` |  |
| config.webhook_update | list | `[]` |  |
| config.webpath | string | `"./pack"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"mattermost/focalboard"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"focalboard.example.com"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `false` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.size | string | `"10Gi"` |  |
| persistence.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8000` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| strategy | string | `"Recreate"` |  |
| tolerations | list | `[]` |  |
