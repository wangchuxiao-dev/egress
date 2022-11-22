docker run -d --rm --name openIM_recorder1 --net=host -e EGRESS_CONFIG_FILE=/out/recorder.yaml -v /data/test/rtc-server/config:/out openim/recorder;

# /data/test/rtc-server/config 为音视频配置文件目录