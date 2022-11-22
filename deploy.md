# 视频保存配置文件

该配置文件为音视频配置文件下的recorder.yaml
```
log_level: debug 
api_key: APIGPW3gnFTzqHH #需要修改为和openIM一致
api_secret: 23ztfSqsfQ8hKkHzHTl3Z4bvaxro0snjk5jwbp5p6Q3 #需要修改为和openIM一致
ws_url: ws://127.0.0.1:7880  #需要修改为和openIM一致
insecure: false #http为false https为true
redis:  #需要修改为和openIM一致
  address: 127.0.0.1:16379
  username:
  password: openIM
  db: 1

s3:  #需要修改为和openIM一致
  access_key: user12345
  secret: key12345
  region: us-east-1
  endpoint: https://storage.rentsoft.cn
  bucket: video

cpu_cost:  #不变动
  room_composite_cpu_cost: 3.0
  track_composite_cpu_cost: 2.0
  track_cpu_cost: 1.0
```

# 启动命令 
一般需要启动3-4个容器， 注意名字需要不一样， /data/test/rtc-server/config 为音视频配置目录
```
docker run -d --rm --name openIM_recorder1 --net=host -e EGRESS_CONFIG_FILE=/out/recorder.yaml -v /data/test/rtc-server/config:/out openim/recorder;

```