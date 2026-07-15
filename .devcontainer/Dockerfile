FROM mcr.microsoft.com/devcontainers/universal:2

# Fix broken/expired GPG key for the pre-configured Yarn apt repo in this base
# image, which otherwise makes `apt-get update` fail for every later layer
# (including devcontainer Features like r-rig).
RUN rm -f /etc/apt/sources.list.d/yarn.list \
    && (apt-get update || true)
    