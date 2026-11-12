#!/bin/sh
set -e
caddy start --config /etc/caddy/Caddyfile --adapter caddyfile >/dev/null 2>&1
exec goaccess --no-global-config --config-file=/srv/config/goaccess.conf
