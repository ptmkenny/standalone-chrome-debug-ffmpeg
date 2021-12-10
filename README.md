# standalone-chrome-debug-ffmpeg

Dockerfile for selenium/standalone-chrome-debug with ffmpeg for screen recording

Based on this comment @dtinth:
https://github.com/SeleniumHQ/docker-selenium/issues/148

## Take screen recording

For example, if your docker container is ptmkenny_seleniumchromedriver_1:

`docker exec -ti ptmkenny_seleniumchromedriver_1 ffmpeg -video_size 1360x1020 -framerate 15 -f x11grab -i :99.0 behat-lando.mp4`

Use CTRL+C to quit.  Then you can copy the video file out of the docker container like this:

`docker cp ptmkenny_seleniumchromedriver_1:/behat-lando.mp4 .`

## Clean up the MP4 file

The poster in the original issue suggests you may need to use MP4Box to clean up the video:

`MP4Box -isma -inter 500 /path/to/recording.mp4`

# build

## build for docker hub

```
docker build -t ptmkenny/standalone-chrome-debug-ffmpeg .
docker push ptmkenny/standalone-chrome-debug-ffmpeg
```

## push a tag

```
docker tag ptmkenny/standalone-chrome-debug-ffmpeg:latest ptmkenny/standalone-chrome-debug-ffmpeg:tagname
docker push ptmkenny/standalone-chrome-debug-ffmpeg:tagname
```
