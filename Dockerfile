FROM selenium/standalone-chrome-debug:3.141.59-zirconium
# Use this version because iframe switching support (for stripe)
# is broken in later versions:
# https://github.com/minkphp/MinkSelenium2Driver/issues/315

# Switch to root user
USER root

# Add ffmpeg
# https://github.com/SeleniumHQ/docker-selenium/issues/148
RUN apt-get update && \
     apt-get install -y \
        ffmpeg \
        gpac

# Add SSL support for stripe
# https://docs.lando.dev/config/security.html#certificates
# RUN cp lndo.site.pem lndo.site.crt /usr/local/share/ca-certificates
COPY lndo.site.pem lndo.site.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
