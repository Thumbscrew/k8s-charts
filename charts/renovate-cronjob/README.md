# renovate-cronjob

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 42](https://img.shields.io/badge/AppVersion-42-informational?style=flat-square)

A Helm chart for running Renovate as a CronJob in Kubernetes.

**Homepage:** <https://www.renovatebot.com/>

## Source Code

* <https://github.com/renovatebot/renovate>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| args | list | `[]` | Additional arguments to pass to the container |
| concurrencyPolicy | string | `"Forbid"` | CronJob concurrency policy |
| envFrom | list | `[]` | Environment variables to set on the container from a ConfigMap or Secret |
| extraEnv | list | `[]` | Additional environment variables to set on the container |
| extraVolumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| extraVolumes | list | `[]` | Additional volumes on the output Deployment definition. |
| fullnameOverride | string | `""` |  |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"renovate/renovate","tag":""}` | This sets the container image more information can be found here: https://kubernetes.io/docs/concepts/containers/images/ |
| image.pullPolicy | string | `"IfNotPresent"` | This sets the pull policy for images. |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | This is for the secrets for pulling an image from a private repository more information can be found here: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| nameOverride | string | `""` | This is to override the chart name. |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| renovate.config | object | `{"data":{},"enabled":false}` | Renovate configuration stored in a ConfigMap |
| renovate.config.data | object | `{}` | Data to store in the ConfigMap |
| renovate.config.enabled | bool | `false` | Enable or disable the ConfigMap creation |
| resources | object | `{}` |  |
| restartPolicy | string | `"Never"` | CronJob restart policy |
| schedule | string | `"@daily"` | CronJob schedule |
| securityContext | object | `{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":1000}` | Security context for the container |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

