# adblocker

AdBlocker is a blackhole for DNS which protects your devices from unwanted contents.

- **Easy to install :** start `adblocker` with only one click or one command.
- **Lightweight :** runs smoothly with minimal software and hardware requirements.

## Public Server

- IP : `37.16.27.82`
- DoT : `adblocker.fly.dev`
- DoH : `https://adblocker.fly.dev/dns-query`

## Deployment

First clone this repository locally :

```bash
git clone https://github.com/asimbera/adblocker.git
```

There are multiple methods available for deployment -

### Method 1 : Docker Compose

```bash
docker compose up -d
```

### Method 2 : [fly.io (recommended)](https://fly.io/)

Change the value of `app` key in `fly.toml` to your created app and run :

```bash
fly deploy --remote-only
```

## Client Setup

You need setup every client to use `adblocker` manually. The server exposes port 53 for DNS, 443 for DNS-over-HTTPS and 853 for DNS-over-TLS.

## Customization

Ad Blocker is just a configuration to run [CoreDNS](https://coredns.io/). There is very little configure, like `host` lists and `plugins`.

This repo uses [**unified host**](https://github.com/StevenBlack/hosts) list by [@StevenBlack](https://github.com/StevenBlack/). You are pretty much free to use any host file you like. Just replce the url below `# host file` line at the `ADD` command and you are good to go.

For plugin specific customization please consult with [CoreDNS manual](https://coredns.io/manual/toc/).
