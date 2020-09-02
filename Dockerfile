FROM selenium/standalone-chrome-debug

# Switch to root user
USER root

# https://github.com/SeleniumHQ/docker-selenium/issues/148
RUN apt-get update && \
     apt-get install -y \
        ffmpeg \
        gpac
