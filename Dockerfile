FROM n8nio/n8n:latest-full

USER root

RUN pip3 install --no-cache-dir yt-dlp

USER node

EXPOSE 5678
