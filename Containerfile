FROM ghcr.io/containerpak/gtk:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/foliate"

RUN apt-get update && \
    apt-get install -y --no-install-recommends foliate && \
    cpak-clean-junk

COPY com.github.johnfactotum.Foliate.desktop /usr/share/applications/com.github.johnfactotum.Foliate.desktop
