FROM alpine:latest
RUN apk --update add curl openjdk8-jre-base tzdata
COPY --chown=root:root /Tachidesk root/Tachidesk
EXPOSE 4567
VOLUME ["/root/.local/share/Tachidesk/"]
CMD ["/bin/sh", "/root/Tachidesk/startup.sh"]