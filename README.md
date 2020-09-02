# standalone-chrome-debug-ffmpeg

Dockerfile for selenium/standalone-chrome-debug with ffmpeg for screen recording

Based on this comment @dtinth:
https://github.com/SeleniumHQ/docker-selenium/issues/148

## Take screen recording

Use `docker exec -ti bash` to spawn a new shell inside a running container. Run this command to record the video:

`ffmpeg -video_size 1360x1020 -framerate 15 -f x11grab -i :99.0 /path/to/recording.mp4`

## Clean up the MP4 file

Use MP4Box to clean up the video:

`MP4Box -isma -inter 500 /path/to/recording.mp4`
