# freshrss

![Version: 1.7.2](https://img.shields.io/badge/Version-1.7.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.26.3](https://img.shields.io/badge/AppVersion-1.26.3-informational?style=flat-square)

A Helm chart for FreshRSS

**Homepage:** <https://freshrss.org/>

## Source Code

* <https://github.com/FreshRSS/FreshRSS>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| freshrss.autoInstall.apiEnabled | bool | `false` | Enable FreshRSS API |
| freshrss.autoInstall.baseUrl | string | `"freshrss.local"` | URL for FreshRSS instance |
| freshrss.autoInstall.db.host | string | `""` | Database hostname |
| freshrss.autoInstall.db.name | string | `"freshrss"` | Database name |
| freshrss.autoInstall.db.password | string | `"freshrss"` | Database password |
| freshrss.autoInstall.db.type | string | `"sqlite"` | Database type - `pgsql`, `mysql` or `sqlite` |
| freshrss.autoInstall.db.user | string | `"freshrss"` | Database user |
| freshrss.autoInstall.defaultUser.email | string | `"admin@example.com"` | Email for the default user |
| freshrss.autoInstall.defaultUser.password | string | `"admin"` | Password for the default user |
| freshrss.autoInstall.defaultUser.user | string | `"admin"` | Username for the default user |
| freshrss.autoInstall.enabled | bool | `false` | Enable automatic install - configurable through the web application if disabled |
| freshrss.autoInstall.language | string | `"en"` | Language short code |
| freshrss.cron.cronMin | string | `"13,43"` | Minute(s) past the hour to run cron |
| freshrss.cron.enabled | bool | `false` | Enable Cron to periodically refresh feeds |
| freshrss.freshEnv | string | `"production"` | Enables additional development information if set to `development` (increases the level of logging and ensures that errors are displayed) |
| freshrss.oidc | object | `{"clientCryptoKey":"","clientId":"","clientSecret":"","enabled":false,"existingClientSecret":{"clientCryptoKeyKey":"clientCryptoKey","clientIdKey":"clientId","clientSecretKey":"clientSecret","name":""},"providerMetadataUrl":"","remoteUserClaim":"","scopes":[],"session":{"inactivityTimeout":300,"maxDuration":-1,"type":""},"xForwardedHeaders":[]}` | See Configuration Environment Variables at https://freshrss.github.io/FreshRSS/en/admins/16_OpenID-Connect.html |
| freshrss.oidc.clientCryptoKey | string | `""` | Sets OIDC_CLIENT_CRYPTO_KEY |
| freshrss.oidc.clientId | string | `""` | Sets OIDC_CLIENT_ID |
| freshrss.oidc.clientSecret | string | `""` | Sets OIDC_CLIENT_SECRET |
| freshrss.oidc.enabled | bool | `false` | Sets OIDC_ENABLED to true |
| freshrss.oidc.existingClientSecret | object | `{"clientCryptoKeyKey":"clientCryptoKey","clientIdKey":"clientId","clientSecretKey":"clientSecret","name":""}` | A Kubernetes secret that contains the clientId, clientSecret and clientCryptoKey |
| freshrss.oidc.providerMetadataUrl | string | `""` | Sets OIDC_PROVIDER_METADATA_URL |
| freshrss.oidc.remoteUserClaim | string | `""` | Sets OIDC_REMOTE_USER_CLAIM |
| freshrss.oidc.scopes | list | `[]` | Sets OIDC_SCOPES (list is concatenated) |
| freshrss.oidc.session.inactivityTimeout | int | `300` | Sets OIDC_SESSION_INACTIVITY_TIMEOUT |
| freshrss.oidc.session.maxDuration | int | `-1` | Sets OIDC_SESSION_MAX_DURATION |
| freshrss.oidc.session.type | string | `""` | Sets OIDC_SESSION_TYPE |
| freshrss.oidc.xForwardedHeaders | list | `[]` | Sets OIDC_X_FORWARDED_HEADERS (list is concatenated) |
| freshrss.timezone | string | `"UTC"` | PHP Timezone - see https://www.php.net/timezones |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"freshrss/freshrss"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"freshrss.local"` |  |
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
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| strategy.type | string | `"Recreate"` |  |
| tolerations | list | `[]` |  |

