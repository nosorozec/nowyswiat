FROM ubuntu:latest

ENV LC_ALL=C \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y alsa-utils mplayer

RUN file="/start.sh" && \
    echo "#!/bin/sh" > $file && \
    echo '/usr/bin/mplayer -nolirc -cache 512 -cache-min 20 -ao $ADEVICE $STREAM' >> $file && \
    chmod 755 $file

CMD ["/start.sh"]
