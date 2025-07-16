FROM caddy:2
COPY Caddyfile /etc/caddy/Caddyfile
USER root
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
