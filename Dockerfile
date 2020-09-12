FROM selenium/standalone-chrome-debug:3.141.59-neon
# Use this version because iframe switching support (for stripe)
# is broken in later versions:
# https://github.com/minkphp/MinkSelenium2Driver/issues/315

# Switch to root user
USER root

# https://github.com/SeleniumHQ/docker-selenium/issues/148
RUN apt-get update && \
     apt-get install -y \
        ffmpeg \
        gpac
