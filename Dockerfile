FROM n8nio/n8n:latest

USER root

# Install dependencies + yt-dlp (Alpine way)
RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    curl \
 && pip3 install --no-cache-dir yt-dlp

USER node

EXPOSE 5678
