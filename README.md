# Helm Charts!

[![Release Charts](https://github.com/Thumbscrew/k8s-charts/actions/workflows/chart-releaser.yaml/badge.svg)](https://github.com/Thumbscrew/k8s-charts/actions/workflows/chart-releaser.yaml)

A repository of Helm Charts that I have deployed in my own homelab.

##  Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is installed, add the repo as follows:

```bash
helm repo add thumbscrew https://thumbscrew.github.io/k8s-charts/
```

Search the repo charts:

```bash
helm search repo thumbscrew
```

## Chart Status

I will generally only maintain the charts that I am currently using. See below for which ones I'm maintaining:

|Chart Name|Description|Website|Maintained|
|----------|-----------|-------|----------|
|cinny|Cinny Matrix client|https://cinny.in/|Yes|
|freshrss|RSS reader written in PHP|https://freshrss.org/|Yes|
|pgadmin|PostgreSQL database management tool|https://www.pgadmin.org/|Yes|
|unifi-controller|Unifi Controller (using linuxserver.io's image) for managing Unifi hardware||Yes|
|focalboard|Kanban board software by Mattermost|https://www.focalboard.com/|No|
|jellyfin|Open source media management system|https://jellyfin.org|Yes|
|tandoor-recipes|Digital Recipe managment|https://tandoor.dev/|Yes|
|silverbullet|Note-taking application optimized for people with a hacker mindset|https://silverbullet.md/|No|
|cyberchef|The Cyber Swiss Army Knife by GCHQ|https://gchq.github.io/CyberChef|Yes|

## Contributing

All contributions welcome!

## License

[MIT License](LICENSE)
