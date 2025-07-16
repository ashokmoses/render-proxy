FROM caddy:2

USER root

COPY Caddyfile /etc/caddy/Caddyfile

# Ensure the caddy executable has execute permissions
# This command finds the 'caddy' executable and adds execute permissions to it.
# It's a robust way to ensure the executable can be run.
RUN chmod +x /usr/bin/caddy

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
