# How to use it?
```
docker run -d \
  --name=nowyswiat \
  --device=/dev/snd \
  --restart=always \
  -e STREAM='https://n13.rcs.revma.com/ypqt40u0x1zuv' \
  -e ADEVICE='alsa:device=hw=0.0' \
  ludw/nowyswiat
```
Parameters:
* `STREAM` - url for the radio stream
* `ADEVICE` - your sound device in Alsa format
