# Use the official Pi-hole base image for ARM (Raspberry Pi)
FROM pihole/pihole:latest

# Set environment variables (Change as needed)
ENV TZ="UTC" \
    WEBPASSWORD="changeme"  # Change this to a secure password

# Expose necessary ports
EXPOSE 53/tcp 53/udp 67/udp 80/tcp 443/tcp

# Start Pi-hole
CMD ["pihole-FTL"]
