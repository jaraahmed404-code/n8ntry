FROM n8nio/n8n:latest-debian

USER root

# Fix repo + install yt-dlp
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list \
 && sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg \
    curl \
 && pip3 install --no-cache-dir yt-dlp \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# ❗ Do NOT switch user
# USER node   <-- remove this

EXPOSE 5678
