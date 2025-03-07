# Use the official Pi-hole base image
FROM pihole/pihole:latest

# Set environment variables
ENV TZ="UTC"
ENV WEBPASSWORD="changeme"  # Change this to a secure password
ENV PIHOLE_DNS_="1.1.1.1;1.0.0.1"  # Cloudflare DNS
ENV DNSMASQ_LISTENING="all"
ENV FTLCONF_LOCAL_IPV4="0.0.0.0"

# Expose necessary ports
EXPOSE 53/tcp 53/udp 67/udp 80/tcp 443/tcp

# Create necessary directories for persistent storage
RUN mkdir -p /etc/pihole /etc/dnsmasq.d

# Set up persistent storage (bind mount within the container)
VOLUME [ "/etc/pihole", "/etc/dnsmasq.d" ]

# Start Pi-hole
CMD ["pihole-FTL"]
